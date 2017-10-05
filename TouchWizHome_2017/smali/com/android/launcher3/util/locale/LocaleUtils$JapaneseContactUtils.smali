.class Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;
.super Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/locale/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JapaneseContactUtils"
.end annotation


# static fields
.field private static final JAPANESE_MISC_LABEL:Ljava/lang/String; = "\u4ed6"

.field private static final USE_JAPANESE_MISC_LABEL:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/locale/LocaleUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v2, p1

    const/16 v4, 0xa0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    sget-object v4, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v4, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_4

    sget-object v4, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v4, v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    move-object v4, v2

    :goto_1
    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mUnderflowLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mOverflowLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v2, "\u4ed6"

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
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

    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
