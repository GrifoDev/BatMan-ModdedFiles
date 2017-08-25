.class public Lcom/samsung/android/settings/multisound/SelectAudioApplications;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SelectAudioApplications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;,
        Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDeleteMenu:Landroid/view/MenuItem;

.field private mDescryptionPreference:Lcom/samsung/android/settings/UnclickablePreference;

.field private mFooterView:Landroid/view/View;

.field private mMode:I

.field private mNeedToUpdate:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRootPreference:Landroid/preference/PreferenceScreen;

.field private mSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPkg:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mDeleteMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mMode:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mNeedToUpdate:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mMode:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mNeedToUpdate:Z

    const-string/jumbo v0, "NONE"

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedPkg:Ljava/lang/String;

    return-void
.end method

.method private addAddItem()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040331

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0b9e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1003f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-object v0
.end method


# virtual methods
.method public createCheckList()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMediaAppList()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Landroid/content/Context;)V

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v7, v11}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setButtonType(I)V

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setKey(Ljava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$3;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "SelectAudioApplications"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to find "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mFooterView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->updateCheckState()V

    return-void
.end method

.method public createRadioList()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMediaAppList()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mDescryptionPreference:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Landroid/content/Context;)V

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setKey(Ljava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/multisound/SelectAudioApplications$2;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$2;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "SelectAudioApplications"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to find "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->updateCheckState()V

    iput-boolean v11, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mNeedToUpdate:Z

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mFooterView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->setHasOptionsMenu(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->addAddItem()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mFooterView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mFooterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mFooterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->createRadioList()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/UnclickablePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mDescryptionPreference:Lcom/samsung/android/settings/UnclickablePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mDescryptionPreference:Lcom/samsung/android/settings/UnclickablePreference;

    const v1, 0x7f0b0b96

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mDescryptionPreference:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f140004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f110815

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mDeleteMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mDeleteMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    return v5

    :pswitch_0
    iget v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mMode:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multisound_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->removePackageForName(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multisound_app"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->showSelectedList()V

    :cond_2
    return v6

    :pswitch_data_0
    .packed-switch 0x7f110815
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mNeedToUpdate:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->createRadioList()V

    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->setHasOptionsMenu(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method public showDeleteList(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mMode:I

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedPkg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->createCheckList()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public showSelectedList()V
    .locals 2

    const-string/jumbo v0, "NONE"

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedPkg:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mMode:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->createRadioList()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public updateCheckState()V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedPkg:Ljava/lang/String;

    const-string/jumbo v7, "NONE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "multisound_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedPkg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setChecked(Z)V

    iget v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mMode:I

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedAppList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    iget v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mMode:I

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->isInAllowedList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setEnabled(Z)V

    if-eqz v1, :cond_3

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mSelectedAppList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$SASRadioPreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v4, v6

    goto :goto_3

    :cond_6
    return-void
.end method
