.class public Lcom/android/launcher3/home/OverviewPanel;
.super Landroid/widget/LinearLayout;
.source "OverviewPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.OverviewPanel"


# instance fields
.field private final DRAWABLE_TOP:I

.field private final ICON_PRESS_ALPHA_VALUE:F

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mSettingsButton:Landroid/widget/TextView;

.field private mWallpapersAndThemesButton:Landroid/widget/TextView;

.field private mWidgetsButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/OverviewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/OverviewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/OverviewPanel;->DRAWABLE_TOP:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/home/OverviewPanel;->ICON_PRESS_ALPHA_VALUE:F

    new-instance v0, Lcom/android/launcher3/home/OverviewPanel$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/OverviewPanel$6;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/OverviewPanel;)Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->onClickWidgetsButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->onClickWallpapersButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->onClickWallpapersAndThemesButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->onClickSettingsButton()V

    return-void
.end method

.method private onClickSettingsButton()V
    .locals 7

    const-string v0, "Launcher.OverviewPanel"

    const-string v1, "onClickSettingsButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Settings"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private onClickWallpapersAndThemesButton()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startThemeStore(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080161

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Wallpaper and theme"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private onClickWallpapersButton()V
    .locals 8

    const/4 v6, 0x0

    const-string v1, "Launcher.OverviewPanel"

    const-string v2, "onClickWallpapersButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.wallpapers.WallpaperPickerActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "mode"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Wallpaper and theme"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method private onClickWidgetsButton()V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const-string v0, "Launcher.OverviewPanel"

    const-string v1, "onClickWidgetsButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f080176

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Widget"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0
.end method

.method private setEditTextBg()V
    .locals 5

    const v4, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private updateButtonLayout(Landroid/widget/TextView;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/home/HomeController;

    iput-object p1, p0, Lcom/android/launcher3/home/OverviewPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-void
.end method

.method changeColorForBg(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/OverviewPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->updateButtonLayout(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->updateButtonLayout(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->updateButtonLayout(Landroid/widget/TextView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0f00b5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    sget-object v2, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/launcher3/home/OverviewPanel$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/OverviewPanel$1;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/launcher3/home/OverviewPanel$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/OverviewPanel$2;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->checkThemeStoreState(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f0f00b4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    sget-object v2, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/launcher3/home/OverviewPanel$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/OverviewPanel$3;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v1, 0x7f0f00b7

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    sget-object v2, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/launcher3/home/OverviewPanel$5;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/OverviewPanel$5;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->setEditTextBg()V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->changeColorForBg(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/launcher3/home/OverviewPanel$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/OverviewPanel$4;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
