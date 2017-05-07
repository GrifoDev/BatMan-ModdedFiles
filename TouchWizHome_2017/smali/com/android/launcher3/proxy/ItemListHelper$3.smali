.class final Lcom/android/launcher3/proxy/ItemListHelper$3;
.super Ljava/lang/Object;
.source "ItemListHelper.java"

# interfaces
.implements Lcom/android/launcher3/proxy/ItemListHelper$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/proxy/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$container:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/proxy/ItemListHelper$3;->val$container:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget v2, p0, Lcom/android/launcher3/proxy/ItemListHelper$3;->val$container:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
