.class Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/locale/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleUtilsBase"
.end annotation


# static fields
.field private static mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/16 v10, 0x1104

    const/16 v9, 0x1101

    const/16 v6, 0xae0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/AlphabeticIndex;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-le v3, v7, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-array v3, v7, [Ljava/util/Locale;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x190

    invoke-virtual {v0, v3}, Landroid/icu/text/AlphabeticIndex;->setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$600()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$500()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$400()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$300()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$200()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$100()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4, v6, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0xe40

    const/16 v6, 0xe45

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x621

    const/16 v6, 0x626

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4, v9, v9}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4, v10, v10}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x1108

    const/16 v6, 0x1108

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x110a

    const/16 v6, 0x110a

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x110d

    const/16 v6, 0x110d

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x1780

    const/16 v6, 0x17dd

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x17e0

    const/16 v6, 0x17e9

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x17f0

    const/16 v6, 0x17f9

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3131

    const/16 v6, 0x3131

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3134

    const/16 v6, 0x3134

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3137

    const/16 v6, 0x3137

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3139

    const/16 v6, 0x3139

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3141

    const/16 v6, 0x3142

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3145

    const/16 v6, 0x3145

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x3147

    const/16 v6, 0x3148

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x314a

    const/16 v6, 0x314e

    invoke-direct {v4, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    new-array v4, v7, [Ljava/util/Locale;

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$000()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v3

    sput-object v3, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    return-void
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    move-object v3, p1

    const/16 v7, 0xa0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$700(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$800(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$900()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v5}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$700(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$1000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_2
    sget-object v7, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v7, v4}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-eqz v6, :cond_5

    if-ltz v0, :cond_5

    sget-object v7, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v7, v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    return-object v3

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
