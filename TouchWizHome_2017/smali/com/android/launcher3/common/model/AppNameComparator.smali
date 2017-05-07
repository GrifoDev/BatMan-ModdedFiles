.class public Lcom/android/launcher3/common/model/AppNameComparator;
.super Ljava/lang/Object;
.source "AppNameComparator.java"


# instance fields
.field private final mAppInfoComparator:Lcom/android/launcher3/common/model/AbstractUserComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/common/model/AbstractUserComparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollator:Ljava/text/Collator;

.field private final mSectionNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mCollator:Ljava/text/Collator;

    new-instance v0, Lcom/android/launcher3/common/model/AppNameComparator$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/AppNameComparator$1;-><init>(Lcom/android/launcher3/common/model/AppNameComparator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mAppInfoComparator:Lcom/android/launcher3/common/model/AbstractUserComparator;

    new-instance v0, Lcom/android/launcher3/common/model/AppNameComparator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/model/AppNameComparator$2;-><init>(Lcom/android/launcher3/common/model/AppNameComparator;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/model/AppNameComparator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/AppNameComparator;->compareTitles(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private compareTitles(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/launcher3/util/locale/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/launcher3/util/locale/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    return v4

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v4, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method


# virtual methods
.method public getAppInfoComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mAppInfoComparator:Lcom/android/launcher3/common/model/AbstractUserComparator;

    return-object v0
.end method

.method public getSectionNameComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    return-object v0
.end method
