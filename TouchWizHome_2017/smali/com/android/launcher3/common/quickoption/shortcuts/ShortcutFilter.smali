.class public Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter;
.super Ljava/lang/Object;
.source "ShortcutFilter.java"


# static fields
.field public static final MAX_SHORTCUTS:I = 0x4

.field static final NUM_DYNAMIC:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter$1;

    invoke-direct {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter;->RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x4

    sget-object v7, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutFilter;->RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v8, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v8, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    if-ge v4, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    sub-int v3, v1, v4

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object p0, v0

    goto :goto_0
.end method
