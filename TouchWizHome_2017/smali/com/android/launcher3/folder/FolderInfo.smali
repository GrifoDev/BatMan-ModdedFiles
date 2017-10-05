.class public Lcom/android/launcher3/folder/FolderInfo;
.super Lcom/android/launcher3/common/base/item/ItemInfo;
.source "FolderInfo.java"


# static fields
.field public static final FLAG_ITEMS_SORTED:I = 0x1

.field public static final FLAG_MULTI_PAGE_ANIMATION:I = 0x4

.field public static final FLAG_WORK_FOLDER:I = 0x2

.field private static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_FLAGS:I

.field private static mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;


# instance fields
.field public color:I

.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/FolderEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphabeticalOrder:Z

.field private mCurrentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocked:Z

.field private mLockedFolderOpenedOnce:Z

.field public opened:Z

.field public options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/FolderInfo$1;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderInfo$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/FolderInfo;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    sget-object v0, Lcom/android/launcher3/folder/FolderInfo;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public add(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onItemsAdded(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addListener(Lcom/android/launcher3/folder/FolderEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBoundView(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasOption(I)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphabeticalOrder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mLocked:Z

    return v0
.end method

.method public isLockedFolderOpenedOnce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mLockedFolderOpenedOnce:Z

    return v0
.end method

.method public makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;
    .locals 5

    new-instance v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/FolderInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iput-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    iput v2, v1, Lcom/android/launcher3/folder/FolderInfo;->options:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    iput v2, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    iput-object v2, v1, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    iput-boolean v2, v1, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mLocked:Z

    iput-boolean v2, v1, Lcom/android/launcher3/folder/FolderInfo;->mLocked:Z

    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mLockedFolderOpenedOnce:Z

    iput-boolean v2, v1, Lcom/android/launcher3/folder/FolderInfo;->mLockedFolderOpenedOnce:Z

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    return-object v1
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string v1, "title"

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "options"

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "color"

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public remove(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onItemsRemoved(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/launcher3/folder/FolderEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAlphabeticalOrder(ZZLandroid/content/Context;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/launcher3/folder/FolderInfo;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    new-instance v1, Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-direct {v1, p3}, Lcom/android/launcher3/common/model/AppNameComparator;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/folder/FolderInfo;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    :cond_2
    sget-object v1, Lcom/android/launcher3/folder/FolderInfo;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/folder/FolderInfo;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onOrderingChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/launcher3/folder/FolderInfo;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderInfo;->mLocked:Z

    return-void
.end method

.method public setLockedFolderOpenedOnce(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderInfo;->mLockedFolderOpenedOnce:Z

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/launcher3/folder/FolderEventListener;->onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOption(IZLandroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    :goto_0
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    if-eq v0, v1, :cond_0

    check-cast p3, Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sortContents()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;->unbind()V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
