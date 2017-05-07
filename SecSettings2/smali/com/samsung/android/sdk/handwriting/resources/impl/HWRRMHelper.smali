.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;
.super Ljava/lang/Object;
.source "HWRRMHelper.java"


# static fields
.field private static final AVAILABLE_LANGUAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mMultiDB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineVersion:Ljava/lang/String;

.field private mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

.field private mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

.field private mbContentProviderAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "ko_KR"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "en_US"

    aput-object v3, v2, v4

    const-string/jumbo v3, "en_GB"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ko_KR_NoHanJa"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "en_US"

    aput-object v3, v2, v4

    const-string/jumbo v3, "en_GB"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ja_JP"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "en_US"

    aput-object v3, v2, v4

    const-string/jumbo v3, "en_GB"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "zh_CN"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "en_US"

    aput-object v3, v2, v4

    const-string/jumbo v3, "en_GB"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "zh_HK"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "en_US"

    aput-object v3, v2, v4

    const-string/jumbo v3, "en_GB"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "zh_TW"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "en_US"

    aput-object v3, v2, v4

    const-string/jumbo v3, "en_GB"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mMultiDB:Ljava/util/Map;

    const/16 v1, 0x41

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "af_ZA"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ar"

    aput-object v2, v1, v5

    const-string/jumbo v2, "az_AZ"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string/jumbo v3, "be_BY"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "bg_BG"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "ca_ES"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "cs_CZ"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "da_DK"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "de_AT"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "de_DE"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "el_GR"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "en_AU"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "en_CA"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "en_GB"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "en_US"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "es_ES"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "es_MX"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "es_US"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "et_EE"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "eu_ES"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "fa_IR"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "fi_FI"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "fr_CA"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "fr_FR"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "ga_IE"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "gl_ES"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "he_IL"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "hi_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v3, "hr_HR"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v3, "hu_HU"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v3, "hy_AM"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v3, "id_ID"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v3, "is_IS"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "it_IT"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "ja_JP"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "ka_GE"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "kk_KZ"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "ko_KR"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v3, "lt_LT"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v3, "lv_LV"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string/jumbo v3, "mk_MK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v3, "mn_MN"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v3, "mr_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string/jumbo v3, "ms_MY"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v3, "nb_NO"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v3, "nl_BE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string/jumbo v3, "nl_NL"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v3, "pl_PL"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v3, "pt_BR"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string/jumbo v3, "pt_PT"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string/jumbo v3, "ro_RO"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string/jumbo v3, "ru_RU"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string/jumbo v3, "sk_SK"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string/jumbo v3, "sl_SI"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string/jumbo v3, "sq_AL"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string/jumbo v3, "sr_RS"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string/jumbo v3, "sv_SE"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string/jumbo v3, "th_TH"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string/jumbo v3, "tr_TR"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string/jumbo v3, "uk_UA"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string/jumbo v3, "ur_PK"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string/jumbo v3, "vi_VN"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string/jumbo v3, "zh_CN"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string/jumbo v3, "zh_HK"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string/jumbo v3, "zh_TW"

    aput-object v3, v1, v2

    sput-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->AVAILABLE_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mbContentProviderAvailable:Z

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mEngineVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mbContentProviderAvailable:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mbContentProviderAvailable:Z

    goto :goto_0
.end method

.method private closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[closeContentProviderClient] content provider client is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0
.end method

.method private getContentProviderClient()Landroid/content/ContentProviderClient;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "com.samsung.android.sdk.handwriting.resourcemanager"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[getContentProviderClient] content resolver is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[getContentProviderClient] content provider client is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez p3, :cond_4

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v6, "lang"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    const-string/jumbo v6, "version"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_2

    :goto_1
    const-string/jumbo v6, "preloaded"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v6, "latest"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const-string/jumbo v6, "false"

    :goto_2
    invoke-direct {v3, v0, v5, v6, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mEngineVersion:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "true"

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "There are no languages in available list!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->AVAILABLE_LANGUAGES:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_0

    aget-object v1, v7, v6

    new-instance v9, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    new-instance v10, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    const-string/jumbo v11, ""

    invoke-direct {v10, v11}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "false"

    const-string/jumbo v12, "true"

    invoke-direct {v9, v1, v10, v11, v12}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method


# virtual methods
.method public isContentProviderAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mbContentProviderAvailable:Z

    return v0
.end method

.method public queryToGetAvailableList()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v6, v8, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v1, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v10

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetAvailableList] client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetAvailableList] cursor is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v8, v2, v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9
.end method

.method public queryToGetDownloadingLangList()Z
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Downloading;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v6, v8, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v1, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetDownloadingLangList] client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetDownloadingLangList] cursor is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9
.end method

.method public queryToGetInstalledLangList()Z
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v6, v8, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v1, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetInstalledLangList] client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetInstalledLangList] cursor is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v8, v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9
.end method

.method public setOnLanguagePackListener(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    return-void
.end method

.method public updateResourceList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    const-string/jumbo v1, "resList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchUpdateByIntent(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mRmLauncher is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
