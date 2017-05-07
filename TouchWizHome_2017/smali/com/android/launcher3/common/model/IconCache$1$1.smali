.class Lcom/android/launcher3/common/model/IconCache$1$1;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/IconCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/common/model/IconCache$1;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/IconCache$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/IconCache$1$1;->this$1:Lcom/android/launcher3/common/model/IconCache$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$1$1;->this$1:Lcom/android/launcher3/common/model/IconCache$1;

    iget-object v0, v0, Lcom/android/launcher3/common/model/IconCache$1;->val$caller:Lcom/android/launcher3/common/view/IconView;

    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache$1$1;->this$1:Lcom/android/launcher3/common/model/IconCache$1;

    iget-object v1, v1, Lcom/android/launcher3/common/model/IconCache$1;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfoFromIconCache(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method
