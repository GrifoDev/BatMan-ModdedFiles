.class Lcom/android/launcher3/common/model/IconCache$1;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/IconCache;->updateIconInBackground(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/IconCache;

.field final synthetic val$caller:Lcom/android/launcher3/common/view/IconView;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/view/IconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/IconCache$1;->this$0:Lcom/android/launcher3/common/model/IconCache;

    iput-object p2, p0, Lcom/android/launcher3/common/model/IconCache$1;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/common/model/IconCache$1;->val$caller:Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache$1;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$1;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v2, p0, Lcom/android/launcher3/common/model/IconCache$1;->this$0:Lcom/android/launcher3/common/model/IconCache;

    iget-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache$1;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v1}, Lcom/android/launcher3/common/model/IconCache;->access$000(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/util/MainThreadExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/common/model/IconCache$1$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/IconCache$1$1;-><init>(Lcom/android/launcher3/common/model/IconCache$1;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method
