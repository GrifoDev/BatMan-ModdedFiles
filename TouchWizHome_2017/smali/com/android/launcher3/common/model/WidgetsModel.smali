.class public Lcom/android/launcher3/common/model/WidgetsModel;
.super Ljava/lang/Object;
.source "WidgetsModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsModel"


# instance fields
.field private final mAppNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppWidgetMgr:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mIndexer:Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;

.field private mPackageItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/model/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRawList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetAndShortcutNameComparator:Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;

.field private mWidgetsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/model/PackageItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mAppWidgetMgr:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    new-instance v0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;

    new-instance v0, Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/model/AppNameComparator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    new-instance v0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mIndexer:Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/common/model/WidgetsModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/launcher3/common/model/WidgetsModel;->mAppWidgetMgr:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mAppWidgetMgr:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v0, p1, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/launcher3/common/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/launcher3/common/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/launcher3/common/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;

    iget-object v0, p1, Lcom/android/launcher3/common/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    iget-object v0, p1, Lcom/android/launcher3/common/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/common/model/WidgetsModel;
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/model/WidgetsModel;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/model/WidgetsModel;-><init>(Lcom/android/launcher3/common/model/WidgetsModel;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/common/model/WidgetsModel;->clone()Lcom/android/launcher3/common/model/WidgetsModel;

    move-result-object v0

    return-object v0
.end method

.method public getPackageItemInfo(I)Lcom/android/launcher3/common/model/PackageItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/PackageItemInfo;

    goto :goto_0
.end method

.method public getPackageSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSortedWidgets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/model/WidgetsModel;->getSortedWidgets(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSortedWidgets(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSortedWidgets(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, v1, p2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-gez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/model/WidgetsModel;->getSortedWidgets(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
