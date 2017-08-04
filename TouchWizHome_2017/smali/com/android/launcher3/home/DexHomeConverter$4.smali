.class Lcom/android/launcher3/home/DexHomeConverter$4;
.super Ljava/lang/Object;
.source "DexHomeConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/DexHomeConverter;->syncItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/DexHomeConverter;

.field final synthetic val$addedToPreviousFolderItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/DexHomeConverter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/DexHomeConverter$4;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    iput-object p2, p0, Lcom/android/launcher3/home/DexHomeConverter$4;->val$addedToPreviousFolderItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v1, p0, Lcom/android/launcher3/home/DexHomeConverter$4;->val$addedToPreviousFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/DexHomeConverter$4;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    invoke-static {v2}, Lcom/android/launcher3/home/DexHomeConverter;->access$200(Lcom/android/launcher3/home/DexHomeConverter;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    iget-object v2, p0, Lcom/android/launcher3/home/DexHomeConverter$4;->this$0:Lcom/android/launcher3/home/DexHomeConverter;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getDexID()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/launcher3/home/DexHomeConverter;->notifyItemId(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
