.class public Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "QuickCameraSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$1;,
        Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mQuickCameraDisableDialog:Landroid/app/AlertDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->dismissAllDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->updateRadioButtons(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private quickCameraDisablePopup()V
    .locals 9

    const v8, 0x7f0b0229

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->dismissAllDialog()V

    const v3, 0x7f0b0452

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0453

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0b0422

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0454

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateRadioButtons(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    rem-int/lit8 v1, p1, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    if-le p1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x8

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f04033b

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1105d6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f1105d7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f1105d5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v6, 0x7f0b0425

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "power_button"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    const-string/jumbo v0, "home_button"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->dismissAllDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "QuickCameraSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->quickCameraDisablePopup()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mPowerbutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "double_tab_launch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->updateRadioButtons(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "double_tab_launch"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->updateRadioButtons(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    rem-int/lit8 v3, v0, 0x2

    if-ne v3, v1, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "QuickCameraSettings"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lcd_curtain"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->quickCameraDisablePopup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->mHomebutton:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    add-int v5, v2, v0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int v3, v2, v0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->updateRadioButtons(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    goto :goto_2
.end method
