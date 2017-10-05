.class final Lcom/android/launcher3/util/ItemListHelper$4;
.super Ljava/lang/Object;
.source "ItemListHelper.java"

# interfaces
.implements Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;[I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$containers:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/ItemListHelper$4;->val$containers:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 10

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/launcher3/util/ItemListHelper$4;->val$containers:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    int-to-long v8, v0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
