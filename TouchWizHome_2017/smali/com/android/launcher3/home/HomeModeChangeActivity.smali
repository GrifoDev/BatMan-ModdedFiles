.class public Lcom/android/launcher3/home/HomeModeChangeActivity;
.super Landroid/app/Activity;
.source "HomeModeChangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ACTION_CHANGE_HOMEONLYMODE:Ljava/lang/String; = "com.android.launcher.action.CHANGE_HOMEONLYMODE"

.field public static final EXTRA_HOMEONLYEMODE:Ljava/lang/String; = "homeOnlyeMode"

.field public static final PERMISSION_CHANGE_HOMEONLYMODE:Ljava/lang/String; = "com.samsung.android.launcher.permission.CHANGE_HOMEONLYMODE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplyButton:Landroid/widget/TextView;

.field private mAppsRadio:Landroid/widget/RadioButton;

.field private mEnabledHomeOnly:Z

.field private mHelpText:Landroid/widget/TextView;

.field private mHomeOnlyRadio:Landroid/widget/RadioButton;

.field private mNeedInit:Z

.field private mPreview:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/home/HomeModeChangeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z

    new-instance v0, Lcom/android/launcher3/home/HomeModeChangeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$1;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeModeChangeActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeModeChangeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->askConfirmation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeModeChangeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setHomeScreenMode()V

    return-void
.end method

.method private askConfirmation()V
    .locals 3

    const v2, 0x7f080046

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080048

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    goto :goto_0
.end method

.method private checkNeedInit()V
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private initActionBar()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const v4, 0x7f030021

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0f0023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0f0069

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0f0068

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020116

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    const v0, 0x7f0f0093

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    const v0, 0x7f0f0092

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0094

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private preformOnClick(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080198

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080132

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080131

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setHomeScreenMode()V
    .locals 8

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "value"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "set_boolean_setting"

    const-string v7, "pref_home_screen_mode"

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080198

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0800eb

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_2

    const-string v4, "2"

    :goto_0
    invoke-virtual {v5, v6, v7, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0801bc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_3

    const-string v4, "2"

    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v3

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher3/home/HomeModeChangeActivity$5;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher3/home/HomeModeChangeActivity$5;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->finish()V

    :cond_1
    return-void

    :cond_2
    const-string v4, "1"

    goto :goto_0

    :cond_3
    const-string v4, "1"

    goto :goto_1
.end method

.method private showModeChangeDialog(IZ)V
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080013

    new-instance v4, Lcom/android/launcher3/home/HomeModeChangeActivity$2;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher3/home/HomeModeChangeActivity$2;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v2, 0x7f08002b

    new-instance v3, Lcom/android/launcher3/home/HomeModeChangeActivity$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$3;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/home/HomeModeChangeActivity$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$4;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/16 v2, 0xf

    goto :goto_0
.end method

.method private updatePreviewAndHelpText(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/home/HomeModeChangeActivity;->updatePreviewAndHelpText(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->askConfirmation()V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0023 -> :sswitch_0
        0x7f0f0069 -> :sswitch_1
        0x7f0f0092 -> :sswitch_2
        0x7f0f0094 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v1, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030029

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setContentView(I)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->initViews()V

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->checkNeedInit()V

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->initActionBar()V

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->updatePreviewAndHelpText(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.launcher.action.CHANGE_HOMEONLYMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.android.launcher.permission.CHANGE_HOMEONLYMODE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/launcher3/home/HomeModeChangeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
