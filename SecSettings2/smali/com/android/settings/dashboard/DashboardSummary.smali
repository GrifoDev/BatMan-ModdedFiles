.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/samsung/android/settings/SecInstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;
    }
.end annotation


# static fields
.field public static final SEC_INITIAL_ITEMS:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

.field private mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private mInitialTileId:Ljava/lang/String;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mSelectedTileId:Ljava/lang/String;

.field private mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

.field private mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

.field private mSuggestionsHiddenLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsShownLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settingslib/SuggestionParser;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/SuggestionsChecks;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/DashboardSummary;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.settings.ConnectionsSettings"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.SoundSettings"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.BlockNotificationList"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.display.SecDisplaySettings"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.Usefulfeature"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.applications.ManageApplications"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenMenuSettings"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.CloudAccountSettings"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettings"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.GeneralDeviceSettings"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.DeviceInfoSettings"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/dashboard/DashboardSummary;->SEC_INITIAL_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mInitialTileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    return-void
.end method

.method private getTileId(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v2, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->getItem(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.android.settings.tileid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.android.settings.tileid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v4
.end method

.method private rebuildUI()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "DashboardSummary"

    const-string/jumbo v2, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getSelectedTilePosition()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getSelectedTilePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->getTileId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategories(Ljava/util/List;)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    :cond_4
    new-instance v1, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setAdapter(Lcom/android/settings/dashboard/DashboardAdapter;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->setSelectedTile(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mInitialTileId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mInitialTileId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->setSelectedTile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSelectedTile(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->getItemViewType(I)I

    move-result v1

    const v2, 0x7f0400a8

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->getTileId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setSelectedTilePosition(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public getSelectedTileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->getSelectedTilePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->getTileId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCategoriesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/android/settingslib/SuggestionParser;

    const-string/jumbo v5, "suggestions"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const v6, 0x7f08012f

    invoke-direct {v4, v1, v5, v6}, Lcom/android/settingslib/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    new-instance v4, Lcom/android/settings/dashboard/SuggestionsChecks;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/dashboard/SuggestionsChecks;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

    if-nez p1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    :goto_0
    const-string/jumbo v4, "DashboardSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "topLevelTileId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mInitialTileId:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "suggestions_shown_logged"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    const-string/jumbo v4, "suggestions_hidden_logged"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0400a1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "suggestions_hidden_logged"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "suggestions_shown_logged"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selected_tile_id"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getSelectedTilePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->getTileId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v2, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    :cond_1
    const-string/jumbo v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStart took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsHiddenLogged:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x181

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v1, 0x7f11022c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "scroll_position"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "selected_tile_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSelectedTileId:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    invoke-direct {v1, v4, v5, p2}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Lcom/android/settingslib/SuggestionParser;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onViewCreated took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v8}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method
