.class public Lcom/android/launcher3/util/locale/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseTWUtils;,
        Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseHKUtils;,
        Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;,
        Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;,
        Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;
    }
.end annotation


# static fields
.field private static final CHINA_LOCALE:Ljava/lang/String; = "zh_CN_#Hans"

.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final ENGLISH_LANGUAGE:Ljava/lang/String;

.field private static final HONGKONG_LOCALE:Ljava/lang/String; = "zh_HK_#Hant"

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static final LOCALE_ARABIC:Ljava/util/Locale;

.field private static final LOCALE_GREEK:Ljava/util/Locale;

.field private static final LOCALE_HEBREW:Ljava/util/Locale;

.field private static final LOCALE_HINDI:Ljava/util/Locale;

.field private static final LOCALE_SERBIAN:Ljava/util/Locale;

.field private static final LOCALE_THAI:Ljava/util/Locale;

.field private static final LOCALE_UKRAINIAN:Ljava/util/Locale;

.field private static final MAX_LOOKUP_NAME_LENGTH:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "LocaleUtils"

.field private static final TAIWAN_LOCALE:Ljava/lang/String; = "zh_TW_#Hant"

.field private static sInstance:Lcom/android/launcher3/util/locale/LocaleUtils;

.field private static sLocale:Ljava/util/Locale;


# instance fields
.field private mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "el"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "he"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "sr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "uk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "hi"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_HINDI:Ljava/util/Locale;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->ENGLISH_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LocaleUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocaleUtils : primary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->sLocale:Ljava/util/Locale;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChineseTW()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseTWUtils;

    invoke-direct {v0}, Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseTWUtils;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/locale/LocaleUtils;->mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChineseHK()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseHKUtils;

    invoke-direct {v0}, Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseHKUtils;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/locale/LocaleUtils;->mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChinesePinyinSearching()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/util/locale/LocaleUtils;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/util/locale/LocaleUtils;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/util/locale/LocaleUtils;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;

    invoke-direct {v0}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/locale/LocaleUtils;->mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/util/locale/LocaleUtils;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;-><init>(Lcom/android/launcher3/util/locale/LocaleUtils$1;)V

    iput-object v0, p0, Lcom/android/launcher3/util/locale/LocaleUtils;->mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    invoke-direct {v0}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/locale/LocaleUtils;->mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    goto :goto_0
.end method

.method static synthetic access$100()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_HINDI:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/util/locale/LocaleUtils;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;
    .locals 3

    const-class v1, Lcom/android/launcher3/util/locale/LocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->sInstance:Lcom/android/launcher3/util/locale/LocaleUtils;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/util/locale/LocaleUtils;->sLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/locale/LocaleUtils;

    invoke-direct {v0}, Lcom/android/launcher3/util/locale/LocaleUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->sInstance:Lcom/android/launcher3/util/locale/LocaleUtils;

    :cond_1
    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->sInstance:Lcom/android/launcher3/util/locale/LocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseHK()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK_#Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChineseLookupSearching()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChineseHK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChineseTW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChinesePinyinSearching()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinesePinyinSearching()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN_#Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/util/locale/LocaleUtils;->ENGLISH_LANGUAGE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinesePinyinSortingOnApps()Z
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN_#Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseTW()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW_#Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/locale/LocaleUtils;->mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/locale/LocaleUtils;->mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/locale/LocaleUtils;->mUtils:Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/locale/LocaleUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "&"

    goto :goto_0

    :cond_3
    const-string v1, "LocaleUtils"

    const-string v2, "cannot make sectionString"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
