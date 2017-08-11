.class public Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;
.super Landroid/widget/FrameLayout;
.source "AllAppsLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$3;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-statusbar-phone-taskbar-views-AllAppsLayout$StateSwitchesValues:[I

.field public static mPackageTobeDisabled:Ljava/lang/String;


# instance fields
.field btnBacktoNormalMode:Landroid/widget/ImageButton;

.field btnSearchCancel:Landroid/widget/ImageButton;

.field btnSearchMoreMenu:Landroid/widget/ImageButton;

.field editSearch:Landroid/widget/EditText;

.field inflater:Landroid/view/LayoutInflater;

.field private isMouseSecondaryButton:Z

.field mAppsView:Landroid/view/View;

.field private mBannerRequeterPkg:Ljava/lang/String;

.field private mBannerView:Landroid/view/View;

.field private mBannerViewContainer:Landroid/widget/FrameLayout;

.field private mBannerViewDefault:Landroid/widget/FrameLayout;

.field private mBannerViewDefaultTitle:Landroid/widget/TextView;

.field private mBtnBannerCancel:Landroid/widget/ImageButton;

.field mBtnViewMoreGalaxyApps:Landroid/widget/Button;

.field mBtnViewMorePlayStore:Landroid/widget/Button;

.field mCheckAll:Landroid/widget/CheckBox;

.field mCheckCount:Landroid/widget/TextView;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field mCtrlPressed:Z

.field private mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field mEditCacnelBtn:Landroid/widget/TextView;

.field mEditTitleLayout:Landroid/widget/RelativeLayout;

.field private mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

.field mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

.field private mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field mIsGalaxyAppsAvailable:Z

.field mIsPlayStoreAvailable:Z

.field mLatestSelectedItemIdx:I

.field mLayoutCheckAll:Landroid/widget/LinearLayout;

.field mMultiSelectStartIdx:I

.field mNormalTitleLayout:Landroid/widget/LinearLayout;

.field private mOnContextClickListener:Landroid/view/View$OnContextClickListener;

.field mScrollView:Landroid/widget/ScrollView;

.field mSearchResultCount:Landroid/widget/TextView;

.field mSearchTextViewNoHistory:Landroid/widget/TextView;

.field mSearchTextViewNoResult:Landroid/widget/TextView;

.field mSearchTitleLayout:Landroid/widget/LinearLayout;

.field mSearchTitleText:Landroid/widget/TextView;

.field mShiftPressed:Z

.field private mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

.field private mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->isMouseSecondaryButton:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Landroid/view/View$OnContextClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mOnContextClickListener:Landroid/view/View$OnContextClickListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-statusbar-phone-taskbar-views-AllAppsLayout$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-com-android-systemui-statusbar-phone-taskbar-views-AllAppsLayout$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-com-android-systemui-statusbar-phone-taskbar-views-AllAppsLayout$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->values()[Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-com-android-systemui-statusbar-phone-taskbar-views-AllAppsLayout$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->isMouseSecondaryButton:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showContextMenu(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->updateSearchList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->toggleCheckBoxAction(Landroid/widget/CheckBox;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->updateViewMoreButtons(ZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->closeAllView(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->disablePackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->launchMenuApp(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->longClickAction(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->selectSeveralApps(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setSearchTitleText(ZI)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchHistoryItems()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchTextView(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mPackageTobeDisabled:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCtrlPressed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mShiftPressed:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->isMouseSecondaryButton:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mOnContextClickListener:Landroid/view/View$OnContextClickListener;

    return-void
.end method

.method private closeAllView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    :cond_0
    return-void
.end method

.method private createAppList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private disablePackageAsUser(Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v1, "[DS]AllAppsLayout"

    const-string/jumbo v2, "disablePackageAsUser :: RemoteException to packageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAllAppsItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getBannerVisibilityPreference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private hideSoftInputFromWindow(Landroid/os/IBinder;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private isMatchedItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;)Z
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return v5

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-object v4, p2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->className:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget v4, p2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->user:I

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v6

    if-ne v4, v6, :cond_5

    const/4 v3, 0x1

    :goto_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v6, "[DS]AllAppsLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMatchedItem :: isMatched="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    move v4, v3

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "  title="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "   package="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    :goto_4
    return v3

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->className:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3

    :cond_7
    move v3, v5

    goto :goto_4
.end method

.method private launchMenuApp(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getItemType()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v1, v2, :cond_0

    iget-wide v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->saveHistoryItems(Ljava/lang/Long;)V

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->closeAllView(Z)V

    :cond_1
    return-void
.end method

.method private longClickAction(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->toggleCheckBoxAction(Landroid/widget/CheckBox;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->toggleCheckBoxAction(Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->startMultiDrag(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->closeAllView(Z)V

    goto :goto_0
.end method

.method private querySearchKeyword(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://com.samsung.android.app.galaxyfinder.applications/search/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v15, 0x0

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v1, "[DS]AllAppsLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can not find finder cursor for keyword = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    :try_start_2
    throw v15
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v11

    const-string/jumbo v1, "[DS]AllAppsLayout"

    const-string/jumbo v3, "SecurityException in querySearchKeyword"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v15

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5

    const-string/jumbo v1, "[DS]AllAppsLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can not find application for keyword = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_3

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_1
    if-eqz v15, :cond_4

    :try_start_5
    throw v15
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v10

    const-string/jumbo v1, "[DS]AllAppsLayout"

    const-string/jumbo v3, "SQLiteException in querySearchKeyword"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :catch_3
    move-exception v15

    goto :goto_1

    :cond_4
    return-object v12

    :cond_5
    :goto_2
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "packageName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v1, "componentName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "user"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v9, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "[DS]AllAppsLayout"

    const-string/jumbo v3, "querySearchKeyword = %s  %s  %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    :goto_3
    if-eqz v8, :cond_6

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_4
    if-eqz v3, :cond_a

    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_7
    if-eqz v8, :cond_8

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2

    :cond_8
    :goto_5
    if-eqz v15, :cond_b

    :try_start_b
    throw v15

    :catch_5
    move-exception v15

    goto :goto_5

    :catch_6
    move-exception v4

    if-nez v3, :cond_9

    move-object v3, v4

    goto :goto_4

    :cond_9
    if-eq v3, v4, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    throw v1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2

    :cond_b
    return-object v12

    :catchall_1
    move-exception v1

    move-object v3, v15

    goto :goto_3
.end method

.method private refreshAllAppsHeaderLayout()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-getcom-android-systemui-statusbar-phone-taskbar-views-AllAppsLayout$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveHistoryItems(Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getTaskBarModel()Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->saveHistoryItems(J)V

    return-void
.end method

.method private selectSeveralApps(I)V
    .locals 5

    const/4 v4, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    if-le p1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    :goto_0
    if-gt v1, p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getCheckedItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckAll:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method private setBannerVisibilityPreference(Z)V
    .locals 2

    const-string/jumbo v0, "com.sec.android.app.launcher.prefs"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->prefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "dex.allapps.banner.visibility"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setDialogText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private setEditMode(Z)V
    .locals 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mNormalTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mEditTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    if-nez v0, :cond_3

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->resetCheckState()V

    iput v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setCheckBoxVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setHoverPopup()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnBacktoNormalMode:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnBacktoNormalMode:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->registerHoverPopupPreShowListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->registerHoverPopupPreShowListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchCancel:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->registerHoverPopupPreShowListener(Landroid/view/View;)V

    return-void
.end method

.method private setSearchTitleText(ZI)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0a0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchResultCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0a0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchResultCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-le p2, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchResultCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0a0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchResultCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0a0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showContextMenu(Landroid/view/View;)Z
    .locals 11

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v0, v2, :cond_3

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canAddToSecureFolderItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canUninstallable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canDisableable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-array v9, v3, [I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    aget v2, v9, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    aget v3, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    :cond_2
    :goto_0
    return v10

    :cond_3
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getCheckedItemList()Ljava/util/ArrayList;

    move-result-object v7

    new-array v9, v3, [I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    aget v1, v9, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aget v2, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenuForEditMode(IFFLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showDisableConfirmation(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v8

    const v5, 0x7f0f0a21

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x7f0f0a23

    invoke-virtual {v0, v3, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;I)V

    const v4, 0x7f0f0a22

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$14;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private showDisableConfirmationForList(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setDialogText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v1, v3, v6

    const v4, 0x7f0f0a21

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0a23

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/util/ArrayList;)V

    const v3, 0x7f0f0a22

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$10;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private showMoreMenu()V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x0

    new-array v6, v1, [I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, v6, v3

    :goto_0
    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    int-to-float v3, v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    return-void

    :cond_0
    aget v2, v6, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private showSearchHistoryItems()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->getSearchHistoryItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setItems(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setSearchText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchTextView(ZZ)V

    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setSearchTitleText(ZI)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchTextView(ZZ)V

    goto :goto_0
.end method

.method private showSearchTextNoHistory(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTextViewNoHistory:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showSearchTextNoResult(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTextViewNoResult:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showSearchTextView(ZZ)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchTextNoResult(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchTextNoHistory(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchTextNoResult(Z)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchTextNoHistory(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showUnintallConfirmation(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0a1d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x7f0f0a20

    invoke-virtual {v0, v3, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$11;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$11;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;I)V

    const v4, 0x7f0f0a1f

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$12;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private showUnintallConfirmationForList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setDialogText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0a1c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0a1e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0a20

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/util/ArrayList;)V

    const v2, 0x7f0f0a1f

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$8;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private startMultiDrag(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;Landroid/graphics/Point;)Z
    .locals 18
    .param p3    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "[DS]AllAppsLayout"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startMultiDrag origin="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ,view="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const-string/jumbo v14, "text/plain"

    const/4 v15, 0x0

    aput-object v14, v10, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getCheckedItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v15, 0x64

    if-le v14, v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0f0a19

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x64

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-static {v14, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    const/4 v14, 0x0

    return v14

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v14}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v15, v14, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;Landroid/graphics/Point;)V

    const/4 v14, 0x1

    return v14

    :cond_2
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v14, "DragAndDropBinding"

    const-string/jumbo v15, "DragAndDropBinding"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "itemType"

    const/16 v15, 0xa

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v14, "itemId"

    iget-wide v0, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-static {v14}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "android.intent.extra.shortcut.ICON"

    iget-object v15, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.extra.shortcut.NAME"

    iget-object v15, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.extra.shortcut.INTENT"

    iget-object v15, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v14, v15}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v8, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    if-nez v5, :cond_5

    new-instance v5, Landroid/content/ClipData;

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14, v10, v9}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v14, v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->createMultiDragBitmap(Landroid/content/Context;Landroid/view/View;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v11}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    const v7, 0x100103

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v14, v7}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_7

    sput-object p2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    const/4 v14, 0x1

    return v14

    :cond_7
    const/4 v14, 0x0

    return v14
.end method

.method private toggleCheckAll()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->resetCheckState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckCount:Landroid/widget/TextView;

    const-string/jumbo v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->notifyDataSetInvalidated()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->checkAll()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckCount:Landroid/widget/TextView;

    const-string/jumbo v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private toggleCheckBoxAction(Landroid/widget/CheckBox;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getCheckedItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckCount:Landroid/widget/TextView;

    const-string/jumbo v5, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateBannerVisibility()V
    .locals 4

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "persist.service.dex.banner_show"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setKnoxDesktopAppsBannerVisibility(Z)V

    return-void
.end method

.method private updateSearchList(Ljava/lang/String;)I
    .locals 9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    if-eqz v7, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchHistoryItems()V

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    return v7

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->querySearchKeyword(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setSearchText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getAllAppsItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getItemType()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v7, v8, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getAllAppsItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getItemType()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v7, v8, :cond_6

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->isMatchedItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setItems(Ljava/util/List;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private updateViewMoreButtons(ZZ)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mIsGalaxyAppsAvailable:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMoreGalaxyApps:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMoreGalaxyApps:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mIsPlayStoreAvailable:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMorePlayStore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMorePlayStore:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMoreGalaxyApps:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMorePlayStore:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public callDisableDialog(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->shouldDisablePopupRepeat()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showDisableConfirmation(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->shouldDisablePopupRepeat()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showDisableConfirmation(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mPackageTobeDisabled:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mPackageTobeDisabled:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "[DS]AllAppsLayout"

    const-string/jumbo v4, "callDisableDialog PackageManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public callDisableDialogForList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showDisableConfirmationForList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public callUninstallDialog(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showUnintallConfirmation(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    return-void
.end method

.method public callUninstallDialogForList(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->createAppList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showUnintallConfirmationForList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public callUninstallDialogForList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showUnintallConfirmationForList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]AllAppsLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeState :: old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   new ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->refreshAllAppsHeaderLayout()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-getcom-android-systemui-statusbar-phone-taskbar-views-AllAppsLayout$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnBacktoNormalMode:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setKnoxDesktopAppsBannerVisibility(Z)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setEditMode(Z)V

    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchTextView(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->refreshAppsWindow()V

    invoke-direct {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->updateViewMoreButtons(ZZ)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setKnoxDesktopAppsBannerVisibility(Z)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setEditMode(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnBacktoNormalMode:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v2

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_7

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->updateViewMoreButtons(ZZ)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showSearchHistoryItems()V

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setKnoxDesktopAppsBannerVisibility(Z)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setEditMode(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setKnoxDesktopAppsBannerVisibility(Z)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setEditMode(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public closeDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mShiftPressed:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCtrlPressed:Z

    :cond_0
    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mShiftPressed:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCtrlPressed:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :sswitch_0
    if-ne v0, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mNormalTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->performClick()Z

    :cond_2
    :goto_0
    return v4

    :sswitch_1
    if-ne v0, v4, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->closeAllView(Z)V

    goto :goto_0

    :sswitch_2
    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mNormalTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getState()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->closeAllView(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getState()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchCancel:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getState()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_7

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getState()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x52 -> :sswitch_0
        0x6f -> :sswitch_2
        0x75 -> :sswitch_1
        0x76 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAllAppsView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    return-object v0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    return-object v0
.end method

.method public getViewForItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .locals 0

    return-void
.end method

.method public hideKnoxDesktopAppsBanner(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]AllAppsLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideKnoxDesktopAppsBanner :: requestPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerRequeterPkg:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerRequeterPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerRequeterPkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setBannerView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "[DS]AllAppsLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideKnoxDesktopAppsBanner fail. mBannerView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , prev pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerRequeterPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   current pkg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeAllAppsView()Landroid/view/View;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "[DS]AllAppsLayout"

    const-string/jumbo v8, "makeAllAppsView()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->inflater:Landroid/view/LayoutInflater;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->inflater:Landroid/view/LayoutInflater;

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04001b

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300bf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mNormalTitleLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnBacktoNormalMode:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnBacktoNormalMode:Landroid/widget/ImageButton;

    invoke-virtual {v7, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchMoreMenu:Landroid/widget/ImageButton;

    invoke-virtual {v7, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchCancel:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->btnSearchCancel:Landroid/widget/ImageButton;

    invoke-virtual {v7, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300ca

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTitleLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300cb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTitleText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300cc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchResultCount:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTextViewNoResult:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300d4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mSearchTextViewNoHistory:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mEditTitleLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLayoutCheckAll:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLayoutCheckAll:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckAll:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckCount:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckCount:Landroid/widget/TextView;

    const-string/jumbo v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300c9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mEditCacnelBtn:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0a14

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mEditCacnelBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mEditCacnelBtn:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d05d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300d2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v7, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v7, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setExpanded(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setChoiceMode(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setTouchSlop(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$5;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mScrollView:Landroid/widget/ScrollView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mScrollView:Landroid/widget/ScrollView;

    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->setTouchSlop(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mScrollView:Landroid/widget/ScrollView;

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300ce

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300cf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewDefault:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewDefault:Landroid/widget/FrameLayout;

    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewDefaultTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewDefaultTitle:Landroid/widget/TextView;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300d0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnBannerCancel:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnBannerCancel:Landroid/widget/ImageButton;

    invoke-virtual {v7, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setBannerView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->updateBannerVisibility()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300d5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMoreGalaxyApps:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0a1a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMoreGalaxyApps:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMoreGalaxyApps:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    const v8, 0x7f1300d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMorePlayStore:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0a1b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMorePlayStore:Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBtnViewMorePlayStore:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d061c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d061d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setHoverPopup()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mAppsView:Landroid/view/View;

    return-object v7
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showMoreMenu()V

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->toggleCheckAll()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setBannerVisibilityPreference(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setKnoxDesktopAppsBannerVisibility(Z)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "samsungapps://CategoryList/0000005211"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->launchGalaxyAppsWithQuery(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->launchPlayStoreWithQuery(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1300c0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->refreshAppsWindow()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mEditCacnelBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0635

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0634

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public onFailedDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .locals 0

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_0

    if-nez v0, :cond_0

    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    if-eqz v6, :cond_0

    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v6, v7, :cond_2

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->toggleCheckBoxAction(Landroid/widget/CheckBox;)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->launchMenuApp(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto :goto_1

    :sswitch_1
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_0

    if-nez v0, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v6, v7, :cond_4

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    if-eq v6, v8, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    iput v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    :cond_4
    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    if-eqz v6, :cond_0

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mLatestSelectedItemIdx:I

    iput v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    goto :goto_0

    :cond_5
    iput v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    :sswitch_3
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_0

    if-nez v0, :cond_0

    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    if-eqz v6, :cond_0

    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v6, v7, :cond_7

    :cond_6
    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->canUninstallable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v6

    if-eqz v6, :cond_7

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showUnintallConfirmation(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_4
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v0, :cond_a

    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    if-eqz v6, :cond_0

    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v6, v7, :cond_9

    :cond_8
    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->longClickAction(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    if-ne v6, v8, :cond_0

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->resetCheckState()V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_a
    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mMultiSelectStartIdx:I

    if-eq v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->resetCheckState()V

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->selectSeveralApps(I)V

    goto/16 :goto_0

    :sswitch_5
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne v0, v11, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v6, v7, :cond_c

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    :cond_b
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->checkAll()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckCount:Landroid/widget/TextView;

    const-string/jumbo v7, "%d"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mCheckAll:Landroid/widget/CheckBox;

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->notifyDataSetInvalidated()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v6, v7, :cond_b

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_2

    :sswitch_6
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne v0, v11, :cond_0

    move-object v6, p1

    check-cast v6, Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;

    if-eqz v6, :cond_0

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v5}, Landroid/view/View;->performContextClick()Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x1d -> :sswitch_5
        0x20 -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x70 -> :sswitch_3
        0x8c -> :sswitch_6
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public prepareCloseView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->closeDialog()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsContextMenu()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->hideSoftInputFromWindow(Landroid/os/IBinder;I)V

    :cond_0
    return-void
.end method

.method public refreshAppsWindow()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInstalledGalaxyApps(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mIsGalaxyAppsAvailable:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInstalledGooglePlay(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mIsPlayStoreAvailable:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mState:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v1, v4, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getAllAppsItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setItems(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setSearchText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->search:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->updateSearchList(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->editSearch:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_4

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->updateViewMoreButtons(ZZ)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getAllAppsItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public registerHoverPopupPreShowListener(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    :cond_0
    return-void
.end method

.method public removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetAppsWindow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->setSearchText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridAdapter:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setBannerView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewDefault:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewDefault:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setKnoxDesktopAppsBannerVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getBannerVisibilityPreference()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerViewContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTaskBarView(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->updateBannerVisibility()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public shouldDisablePopupRepeat()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "com.sec.android.app.launcher.prefs"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "disable.toast.popup.dismissed.key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .locals 0

    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    const/high16 v0, 0x7fc00000    # NaNf

    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public showKnoxDesktopAppsBanner(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]AllAppsLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showKnoxDesktopAppsBanner :: requestPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   remoteViews ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerRequeterPkg:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerRequeterPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setBannerView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerRequeterPkg:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setBannerVisibilityPreference(Z)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->setKnoxDesktopAppsBannerVisibility(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "[DS]AllAppsLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showKnoxDesktopAppsBanner. cannot update. prev pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mBannerRequeterPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current pkg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteViews ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mPackageTobeDisabled:Ljava/lang/String;

    const/16 v4, 0x2200

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mPackageTobeDisabled:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "[DS]AllAppsLayout"

    const-string/jumbo v4, "onActivityResult PackageManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "[DS]AllAppsLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mPackageTobeDisabled:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
