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
.field protected static mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;


# instance fields
.field protected mOverflowLabel:Ljava/lang/String;

.field protected mUnderflowLabel:Ljava/lang/String;


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

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex;->getUnderflowLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mUnderflowLabel:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex;->getOverflowLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mOverflowLabel:Ljava/lang/String;

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

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$700()Ljava/util/Locale;

    move-result-object v5

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

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$100()Ljava/util/Locale;

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
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

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

    if-lez v4, :cond_1

    sget-object v4, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v4, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v4, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v4, v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mUnderflowLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->mOverflowLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
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
