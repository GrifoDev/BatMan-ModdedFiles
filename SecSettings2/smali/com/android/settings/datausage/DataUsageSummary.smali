.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummary$1;,
        Lcom/android/settings/datausage/DataUsageSummary$2;,
        Lcom/android/settings/datausage/DataUsageSummary$3;,
        Lcom/android/settings/datausage/DataUsageSummary$4;,
        Lcom/android/settings/datausage/DataUsageSummary$5;,
        Lcom/android/settings/datausage/DataUsageSummary$6;,
        Lcom/android/settings/datausage/DataUsageSummary$7;,
        Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;,
        Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mIsDynamicUnits:Z

.field public static mSelectDisplayUnit:I


# instance fields
.field private ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

.field private isClicked:Z

.field private isKnoxmode:Z

.field private mCheckPhoneBalance:Landroid/preference/Preference;

.field private mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

.field private mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mDialogUDS:Landroid/app/DialogFragment;

.field private mDisplayUnitDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsATT:Z

.field private mIsCHNSmartManager:Z

.field private mIsSIMCardInserted:Z

.field private mIsSPR:Z

.field private mIsSupportMobileDataATT:Z

.field private mIsSupportRoamingATT:Z

.field private mIsVZW:Z

.field private mLimitPreference:Landroid/preference/Preference;

.field private mMobileDataATT:Landroid/preference/Preference;

.field private mMobileSectionCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/datausage/TemplatePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mPcoFeature:Ljava/lang/String;

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRoamingATT:Landroid/preference/Preference;

.field private mRootView:Landroid/view/View;

.field private mSetDataPreference:Landroid/preference/Preference;

.field private mSetOperatorPreference:Landroid/preference/Preference;

.field private mShowUnitVZW:Landroid/view/MenuItem;

.field private mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

.field private mTopUpPhoneBalance:Landroid/preference/Preference;

.field private mUDSPreference:Landroid/preference/Preference;

.field private mUDSStateObserver:Landroid/database/ContentObserver;

.field private mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

.field public summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSavingChnPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDialogUDS:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->showDisplayUnitDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateStateForDynamicUnits()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$5;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$6;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$6;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/preference/Preference;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->isClicked:Z

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDialogUDS:Landroid/app/DialogFragment;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$1;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$2;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$3;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$4;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$7;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080049

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    sub-int v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    const-string/jumbo v4, "mobile_data_att"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportRoamingATT:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "roaming_att"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/preference/Preference;

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v4, "mobile_data_att"

    invoke-virtual {p1, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "roaming_att"

    invoke-virtual {p1, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private addEthernetSection()V
    .locals 4

    const v1, 0x7f08004d

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v5, 0x7f08004a

    invoke-direct {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v5, p1, v6}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportRoamingATT:Z

    if-eqz v5, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    if-eqz v5, :cond_b

    :cond_2
    const-string/jumbo v5, "alert_at_warning"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/AlertAtWarningPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->setTargetFragment(Lcom/android/settings/datausage/DataUsageSummary;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v5, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_3
    const-string/jumbo v5, "confirm_at_boot"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v5, :cond_f

    const-string/jumbo v5, "cellular_data_usage"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "billing_preference"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetDataPreference:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "operator_set"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetOperatorPreference:Landroid/preference/Preference;

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v3, :cond_e

    :cond_6
    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_3
    sget-boolean v5, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-nez v5, :cond_7

    const-string/jumbo v5, "data_usage_reminder"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v5, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_4
    const-string/jumbo v5, "data_saving_chn"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataSavingChnPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/DataSavingChnPreference;->bindDataSavingService()V

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v5}, Lcom/android/settings/datausage/DataSavingChnPreference;->registerDataEnabledObserver()V

    const-string/jumbo v5, "DataUsageSummary"

    const-string/jumbo v6, " mDataSavingChnPreference bind Datasaving service"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v5, :cond_13

    const-string/jumbo v5, "billing_preference"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "data_usage_enable"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "data_saving_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "data_usage_reminder"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "billing_preference_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "operator_set"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "restrict_app_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_9
    :goto_6
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isRoamingArea()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    :cond_a
    const-string/jumbo v5, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v6, "UDS2"

    invoke-static {v5, v6}, Lcom/android/settings/datausage/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.sm"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string/jumbo v5, "ultra_data_saver"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "udsState"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroid/preference/Preference;

    if-ne v4, v8, :cond_14

    const v5, 0x7f0b1bda

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroid/preference/Preference;

    new-instance v6, Lcom/android/settings/datausage/DataUsageSummary$9;

    invoke-direct {v6, p0}, Lcom/android/settings/datausage/DataUsageSummary$9;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_8
    return-object v0

    :cond_b
    const-string/jumbo v5, "alert_at_warning"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v5, "confirm_at_boot"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v5, "billing_preference_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "restrict_app_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v5, "operator_set"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v5, :cond_12

    const-string/jumbo v5, "data_saving_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_12
    iput-object v7, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    goto/16 :goto_5

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "data_saving_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "restrict_app_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_14
    const v5, 0x7f0b1bdb

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    :cond_15
    const-string/jumbo v5, "ultra_data_saver"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private addWifiSection()V
    .locals 4

    const v1, 0x7f080051

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "network_restrictions"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    goto :goto_0
.end method

.method private static formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/text/SpannableString;

    const v4, 0x104009c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%1$s"

    const-string/jumbo v6, "^1"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%2$s"

    const-string/jumbo v6, "^2"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2, p3, v8}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v4, "%1$s"

    const-string/jumbo v5, "^1"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "^1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/settings/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    new-array v4, v8, [Ljava/lang/CharSequence;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSubscriptionId(Landroid/content/Context;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    return v3
.end method

.method public static getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq p1, v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p1, v3, :cond_2

    :cond_1
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq p1, v3, :cond_3

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_3
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_4
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 2

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method private static getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasEnableSimCard(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the ActiveSubscriptionInfoCount is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static hasMobileData(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method public static hasReadyEnt1Radio(Landroid/content/Context;)Z
    .locals 1

    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z
    .locals 5

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private inflatePreferences(I)Landroid/preference/Preference;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method private initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "data_usage_reminder"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080050

    invoke-virtual {v6, v7, v8, v9}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v2

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string/jumbo v6, "data_usage_reminder"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f0b113a

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "data_usage_reminder"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "oversea"

    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showDisplayUnitDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "data_usage_display_unit"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0569

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v2, Lcom/android/settings/datausage/DataUsageSummary$8;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageSummary$8;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    const v3, 0x7f0c00b9

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateState()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v14, v15}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v5, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v2, v15, v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v14, :cond_6

    sget v14, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    :goto_0
    sput-boolean v14, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    sget-boolean v14, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    if-eqz v14, :cond_1

    new-instance v3, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v16

    sget v17, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v3, v14, v15}, Lcom/android/settings/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    invoke-virtual {v14, v3}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-wide v8, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-gtz v14, :cond_2

    iget-wide v8, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    :cond_2
    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v14, v14, v8

    if-lez v14, :cond_3

    iget-wide v8, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    iget-object v15, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/SecSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/settings/SecSummaryPreference;->setLabels(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    move-wide/from16 v0, v16

    long-to-float v15, v0

    long-to-float v0, v8

    move/from16 v16, v0

    div-float v15, v15, v16

    const/16 v16, 0x0

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    long-to-float v0, v8

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/SecSummaryPreference;->setRatios(FFF)V

    const v14, 0x7f0d0097

    invoke-virtual {v2, v14}, Landroid/content/Context;->getColor(I)I

    move-result v11

    const v14, 0x7f0d0098

    invoke-virtual {v2, v14}, Landroid/content/Context;->getColor(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15, v11}, Lcom/samsung/android/settings/SecSummaryPreference;->setColors(III)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    if-eqz v14, :cond_5

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-gtz v14, :cond_a

    const v14, 0x7f0b1d04

    :goto_3
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_4
    const-string/jumbo v14, "DataUsageSummary"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateState warning : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "  limit : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v14, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v14, :cond_d

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    if-ge v4, v14, :cond_e

    invoke-virtual {v12, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v15, v0

    long-to-float v0, v8

    move/from16 v16, v0

    div-float v15, v15, v16

    const/16 v16, 0x0

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v18, v0

    sub-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    long-to-float v0, v8

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/SecSummaryPreference;->setRatios(FFF)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v14, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInfoData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v14, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    goto/16 :goto_2

    :cond_a
    const v14, 0x7f0b1d05

    goto/16 :goto_3

    :cond_b
    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const v16, 0x7f0b056b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    if-ge v4, v14, :cond_e

    invoke-virtual {v12, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    if-eqz v14, :cond_f

    if-eqz v2, :cond_f

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v14}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v14}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v14

    if-eqz v14, :cond_16

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/DataSaverPreference;->setEnabled(Z)V

    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v16, "mobile_data_question"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_17

    const/4 v14, 0x1

    :goto_9
    invoke-virtual {v15, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v14}, Lcom/android/settings/datausage/DataSavingChnPreference;->updateEnabled()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v14}, Lcom/android/settings/datausage/DataSavingChnPreference;->updateSwitchState()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/DataSaverPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_14
    return-void

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/DataSaverPreference;->setEnabled(Z)V

    goto :goto_8

    :cond_17
    const/4 v14, 0x0

    goto :goto_9
.end method

.method private updateStateForDynamicUnits()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const-string/jumbo v4, "wifi_data_usage"

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/DataUsagePreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsagePreference;->updateSummary()V

    :cond_0
    const-string/jumbo v3, "mobile_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v0, :cond_1

    const-string/jumbo v3, "cellular_data_usage"

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsagePreference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsagePreference;->updateSummary()V

    :cond_1
    return-void
.end method

.method private static verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 8

    const/16 v7, 0x12

    const/4 v6, 0x0

    const v5, 0x3f111111

    const v1, 0x3f111111

    const/16 v0, 0x12

    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v3, v4

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method


# virtual methods
.method public addEnt1Section(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    const v1, 0x7f08004c

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    :cond_2
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 13

    const/4 v12, 0x0

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    const/16 v1, 0x9

    invoke-virtual {v6, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v10

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v9, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    return v12

    :catch_1
    move-exception v7

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v1, v12

    goto :goto_1
.end method

.method public isVolte()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    invoke-super/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v17, "dialogShown"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->showDisplayUnitDialog()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_ConfigPco"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v17, "ATT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v17, "+enhanced4glte2"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    const-string/jumbo v17, "+internationalenhanced4glte"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportRoamingATT:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v5

    new-instance v17, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    const-string/jumbo v17, "DataUsageSummary"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "hasMobileData:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "mIsSIMCardInserted:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    const v17, 0x7f08004b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    :goto_2
    const-string/jumbo v17, "usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_3

    const/4 v6, 0x0

    const/4 v5, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_18

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    if-eqz v6, :cond_19

    const-string/jumbo v17, "limit_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    :cond_5
    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "COMMON"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string/jumbo v17, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/datausage/DataSaverPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "background_data_by_pco"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "background_data_by_pco"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    const/4 v13, 0x1

    :cond_6
    :goto_5
    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_7
    if-eqz v13, :cond_1b

    :cond_8
    if-eqz v16, :cond_9

    const-string/jumbo v17, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/datausage/DataSaverPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    :cond_b
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v17, v0

    :goto_7
    if-nez v17, :cond_c

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->addEthernetSection()V

    :cond_e
    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v17, v0

    if-eqz v17, :cond_22

    :cond_f
    if-eqz v6, :cond_25

    const v17, 0x7f0b1d01

    :goto_8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    const-string/jumbo v17, "status_header"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/settings/SecSummaryPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v17, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v17, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "data_usage_display_unit"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "enterprise_policy"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_12
    new-instance v17, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_13
    const-string/jumbo v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    goto/16 :goto_0

    :cond_15
    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_17
    const v17, 0x7f080048

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_18
    const/4 v6, 0x0

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_19
    if-eqz v16, :cond_5

    const-string/jumbo v17, "limit_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_1b
    const-string/jumbo v17, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/datausage/DataSaverPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_1d

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_1e

    :cond_1d
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    const/4 v8, 0x0

    :goto_9
    if-eqz v15, :cond_c

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_c

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v17

    if-nez v17, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_20

    :cond_1f
    if-nez v8, :cond_20

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_20
    const/16 v17, 0x0

    goto :goto_a

    :cond_21
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_23

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_24

    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    :cond_24
    const/4 v8, 0x0

    :goto_b
    if-eqz v15, :cond_f

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_f

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_25
    if-eqz v7, :cond_26

    const v17, 0x7f0b1d02

    goto/16 :goto_8

    :cond_26
    const v17, 0x7f0b1d03

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/datausage/DataUsageBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040216

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v4, "COMMON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDestroy, currentStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->stopAutoCalibrationService()V

    goto :goto_0

    :cond_5
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataSavingChnPreference;->unbindDataSavingService()V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataSavingChnPreference;->unregisterDataEnabledObserver()V

    :cond_7
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    return v7

    :pswitch_1
    const-string/jumbo v2, "com.android.settings.datausage.DataUsageHelp"

    const v3, 0x7f0b1a91

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummary;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v7

    :pswitch_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->showDisplayUnitDialog()V

    :cond_0
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x7f1109c0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v1, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v2, "UDS"

    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DataUsage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data_question"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string/jumbo v3, "data_usage_reminder"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "data_usage_reminder"

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12

    const/16 v4, 0x64

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetDataPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSetDataPreference click, currentStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v8, v1, :cond_0

    const/4 v1, 0x3

    if-ne v8, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b1130

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v11

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->show(Lcom/android/settings/datausage/DataUsageSummary;)V

    return v11

    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetOperatorPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-static {}, Lcom/android/settings/Utils;->isUserSetAutoCalibrationEnable()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->showWarningDialog(Landroid/os/Bundle;Z)V

    :cond_3
    :goto_0
    return v11

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b112d

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    if-ne p2, v1, :cond_6

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mTopUpPhoneBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    if-ne p2, v1, :cond_7

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mCheckPhoneBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    if-ne p2, v1, :cond_8

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.Enhanced4GLTE"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-lt v1, v4, :cond_a

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v10, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/preference/Preference;

    if-ne p2, v1, :cond_9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.InternationalEnhanced4GLTE"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-lt v1, v4, :cond_b

    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v10, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :catch_0
    move-exception v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTopUpPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCheckPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMobileDataATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :catch_3
    move-exception v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRoamingATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v2, 0x7f1109c0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const v2, 0x7f1109c2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    const v2, 0x7f1109c1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DisplayUnits"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->showDisplayUnitDialog()V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DisplayUnits"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DisplayUnits"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "DisplayUnits"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    iput-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->isClicked:Z

    const-string/jumbo v1, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v2, "UDS"

    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "udsState"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "udsState"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDialogUDS:Landroid/app/DialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDialogUDS:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->close(Lcom/android/settings/datausage/DataUsageSummary;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DataUsage"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setDataSavingChnPreference(Lcom/android/settings/datausage/DataSavingChnPreference;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInstance(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->setSecSummaryLayoutCHN(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    :cond_0
    return-void
.end method

.method public updateDataUsage()V
    .locals 2

    const-string/jumbo v0, "DataUsageSummary"

    const-string/jumbo v1, "updateDataUsage "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method
