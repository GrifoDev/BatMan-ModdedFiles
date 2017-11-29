.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$1;,
        Lcom/android/settings/datausage/AppDataUsage$2;,
        Lcom/android/settings/datausage/AppDataUsage$3;,
        Lcom/android/settings/datausage/AppDataUsage$4;,
        Lcom/android/settings/datausage/AppDataUsage$5;,
        Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    }
.end annotation


# static fields
.field private static bSupportRoamingReduction:Z

.field private static mSelectDisplayUnit:I

.field private static sAllowBackgroundDataUsage:I

.field private static sAllowUnrestrictedDataUsage:I

.field private static sCycle:I


# instance fields
.field private final RESTRICTION_ALWAYS:I

.field private final RESTRICTION_DURING_ROAMING:I

.field private final RESTRICTION_NEVER:I

.field private bg_Restriction_resId:[I

.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroid/preference/PreferenceCategory;

.field private mAppSettings:Landroid/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/preference/Preference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnd:J

.field private mForegroundUsage:Landroid/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsVZW:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcoFeature:Ljava/lang/String;

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mRestrictBackground:Landroid/preference/SwitchPreference;

.field private mRestrictBackgroundPco:Landroid/preference/SwitchPreference;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

.field private mSavedUsage:Landroid/preference/Preference;

.field private mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/preference/Preference;

.field private mUnrestrictedData:Landroid/preference/SwitchPreference;

.field private mUnrestrictedDataPco:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get13()I
    .locals 1

    sget v0, Lcom/android/settings/datausage/AppDataUsage;->sCycle:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/settings/datausage/AppDataUsage;Landroid/preference/SwitchPreference;)Landroid/preference/SwitchPreference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/settings/datausage/AppDataUsage;Landroid/preference/SwitchPreference;)Landroid/preference/SwitchPreference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    return-object p1
.end method

.method static synthetic -set5(I)I
    .locals 0

    sput p0, Lcom/android/settings/datausage/AppDataUsage;->sCycle:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/AppDataUsage;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iput v4, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_NEVER:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_ALWAYS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_DURING_ROAMING:I

    const v0, 0x7f0b055b

    const v1, 0x7f0b055c

    const v2, 0x7f0b055d

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->bg_Restriction_resId:[I

    iput-boolean v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$4;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$5;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addUid(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindData()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :cond_0
    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-string/jumbo v3, "cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v3, "divider_1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    :goto_0
    add-long v18, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/preference/Preference;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/preference/Preference;

    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/preference/Preference;

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSavedBytesByUid(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v4, v5, v14, v15}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v4, v5, v12, v13}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v12, v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    goto/16 :goto_0
.end method

.method private getAppRestrictBackground()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v3, Lcom/android/settingslib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private getUnrestrictData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getUserSetBackgroundUids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_restrict_background_uidlist"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    const-string/jumbo v4, ""

    aget-object v5, v1, v0

    if-eq v4, v5, :cond_0

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private storeUserBackgroundSet(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUserSetBackgroundUids()Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v5, Lcom/android/settingslib/AppItem;->key:I

    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    const-string/jumbo v4, ""

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "user_restrict_background_uidlist"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private updatePrefs()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    return-void
.end method

.method private updatePrefs(ZZ)V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    :goto_0
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v8, v0}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    :cond_2
    if-nez v0, :cond_7

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v6, v7

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_8

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_d

    move v8, v6

    :goto_2
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_8
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_9

    if-eqz p1, :cond_e

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_3
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_9
    sget-boolean v8, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-eqz v8, :cond_b

    move v1, p1

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v9, v9, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/DataSaverBackend;->getRoamingReduction(I)I

    move-result v3

    :cond_a
    const/4 v4, 0x0

    if-eqz p1, :cond_f

    const/4 v4, 0x1

    :goto_4
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v8, v4}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    :cond_b
    const-string/jumbo v8, "trafficmanager"

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v8, Lcom/android/settingslib/AppItem;->key:I

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v8, v8, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v8, v5}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_c
    :goto_5
    return-void

    :cond_d
    move v8, v7

    goto :goto_2

    :cond_e
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_f
    if-nez v3, :cond_10

    const/4 v4, 0x2

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    goto :goto_4

    :cond_11
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_12

    :goto_6
    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_12
    move v6, v7

    goto :goto_6
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28

    invoke-super/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_ConfigPco"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v23, "VZW"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "data_usage_display_unit"

    const/16 v25, 0x2

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    sput v23, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_7

    const-string/jumbo v23, "app_item"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Lcom/android/settingslib/AppItem;

    :goto_0
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz v4, :cond_8

    const-string/jumbo v23, "network_template"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/net/NetworkTemplate;

    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v6, v0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    if-eqz v4, :cond_9

    const-string/jumbo v23, "uid"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_3
    const v23, 0x7f08001a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    const-string/jumbo v23, "total_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/preference/Preference;

    const-string/jumbo v23, "foreground_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/preference/Preference;

    const-string/jumbo v23, "background_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/preference/Preference;

    const-string/jumbo v23, "saved_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    const-string/jumbo v23, "cycle"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    new-instance v23, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-direct/range {v23 .. v27}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    move/from16 v23, v0

    if-lez v23, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/ArraySet;->size()I

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "unrestricted_data_saver"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "spr_roaming_reduction"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "divider_3"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    :goto_5
    new-instance v23, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string/jumbo v23, "app_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/preference/Preference;

    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v24, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string/jumbo v24, "android.intent.category.DEFAULT"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v23

    if-eqz v23, :cond_4

    const/4 v13, 0x1

    :cond_5
    if-nez v13, :cond_6

    const-string/jumbo v23, "app_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "divider_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/preference/Preference;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/ArraySet;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_10

    const-string/jumbo v23, "app_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/preference/PreferenceCategory;

    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/ArraySet;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_11

    :try_start_2
    new-instance v24, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;

    const/16 v23, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;)V

    sget-object v25, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const/16 v27, 0x0

    aput-object v23, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :catch_0
    move-exception v8

    new-instance v23, Ljava/lang/RuntimeException;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string/jumbo v24, "uid"

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    new-instance v23, Lcom/android/settingslib/AppItem;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    goto/16 :goto_3

    :cond_b
    const/4 v10, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_c
    const-string/jumbo v23, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v23, "unrestricted_data_saver"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b054e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b054f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    sput-boolean v23, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    const-string/jumbo v23, "ro.home.operator.rrenabled"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    const-string/jumbo v23, "AppDataUsage"

    const-string/jumbo v24, "Roaming reduction in chameleon = false"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    :cond_e
    sget-boolean v23, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    if-eqz v23, :cond_f

    const-string/jumbo v23, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "spr_roaming_reduction"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const v25, 0x7f0b055b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const v25, 0x7f0b055c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aput-object v25, v24, v26

    const v25, 0x7f0b055d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v24, v26

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string/jumbo v25, "0"

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const-string/jumbo v25, "1"

    const/16 v26, 0x1

    aput-object v25, v24, v26

    const-string/jumbo v25, "2"

    const/16 v26, 0x2

    aput-object v25, v24, v26

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v23, "spr_roaming_reduction"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_1
    move-exception v9

    const-string/jumbo v23, "AppDataUsage"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "RejectedExecutionException:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v23, "app_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v23, v0

    if-nez v23, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-string/jumbo v24, "enterprise_policy"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_13
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getInstance()Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    sget-boolean v23, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->misSupportDataCompression:Z

    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->isDataCompressionEnabled()Z

    move-result v23

    if-eqz v23, :cond_1d

    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "COMMON"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_16

    const-string/jumbo v23, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Landroid/preference/SwitchPreference;

    const-string/jumbo v23, "unrestricted_data_saver"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "background_data_by_pco"

    invoke-static/range {v24 .. v24}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "background_data_by_pco"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1e

    const/16 v18, 0x1

    :goto_b
    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    :cond_16
    new-instance v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v23 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    move/from16 v23, v0

    const/16 v24, -0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f0b00d4

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    :cond_18
    :goto_c
    const-string/jumbo v23, "unrestricted_data_saver"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "app_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "app_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "spr_roaming_reduction"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "divider_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v23, "divider_3"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    move/from16 v23, v0

    const/16 v24, -0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f0b00d9

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto :goto_c

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    move/from16 v23, v0

    const/16 v24, -0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f0b01cc

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    if-eqz v12, :cond_18

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v23

    if-nez v23, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_c

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "persona"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/SemPersonaManager;

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v16

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerIcon(I)[B

    move-result-object v5

    if-eqz v5, :cond_18

    new-instance v23, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    array-length v0, v5

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v5, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_c

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    goto/16 :goto_a

    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_b

    :catch_2
    move-exception v7

    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v1, "COMMON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileData"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v1, Lcom/android/settingslib/AppItem;->key:I

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    const-string/jumbo v1, "trafficmanager"

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->storeUserBackgroundSet(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10008b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/datausage/AppDataUsage;->sAllowBackgroundDataUsage:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/android/settings/datausage/AppDataUsage;->sAllowBackgroundDataUsage:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_6

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v1, Lcom/android/settingslib/AppItem;->key:I

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10008c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/datausage/AppDataUsage;->sAllowUnrestrictedDataUsage:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/android/settings/datausage/AppDataUsage;->sAllowUnrestrictedDataUsage:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_6
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-ne p1, v1, :cond_7

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/settings/datausage/DataSaverBackend;->changeRoamingPolicyIfNeeded(ILjava/lang/String;I)V

    return v3

    :cond_7
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-static {v1, v2}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "MobileData"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsage;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/android/settings/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v5

    invoke-static/range {v0 .. v8}, Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method
