.class final Lcom/android/settings/datausage/DataUsageSummary$6;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const/4 v10, -0x1

    if-ne v0, v10, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const-string/jumbo v10, "restrict_background"

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x64

    if-lt v10, v11, :cond_d

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v2, :cond_e

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v7, :cond_f

    :cond_4
    :goto_2
    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "VZW"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v5, 0x1

    :cond_5
    :goto_3
    if-nez v5, :cond_12

    :goto_4
    if-nez v3, :cond_6

    const-string/jumbo v9, "alert_at_warning"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v9, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    const-string/jumbo v9, "confirm_at_boot"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v9

    if-eqz v9, :cond_13

    const-string/jumbo v9, "cellular_data_usage"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "billing_preference"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string/jumbo v9, "check_phone_balance"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    sget-boolean v9, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-nez v9, :cond_a

    const-string/jumbo v9, "data_usage_reminder"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v9

    if-eqz v9, :cond_14

    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "data_saving_chn"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string/jumbo v9, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v10, "UDS2"

    invoke-static {v9, v10}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string/jumbo v9, "com.samsung.android.sm"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    :goto_7
    return-object v6

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_f
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    :goto_8
    if-nez v10, :cond_4

    const-string/jumbo v10, "data_usage_enable"

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    move v10, v9

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_12
    move v3, v9

    goto/16 :goto_4

    :cond_13
    const-string/jumbo v9, "billing_preference_chn"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "restrict_app_data"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "set_used_data"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "top_up_phone_balance"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "check_phone_balance"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_14
    const-string/jumbo v9, "operator_set"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    const-string/jumbo v9, "ultra_data_saver"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080048

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "search hasMobileData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08004a

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080051

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_0
    return-object v3

    :cond_4
    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080050

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
