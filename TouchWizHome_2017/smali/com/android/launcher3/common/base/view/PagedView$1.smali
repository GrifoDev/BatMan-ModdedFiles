.class Lcom/android/launcher3/common/base/view/PagedView$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/PagedView;->computeScrollHelper()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView$1;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$1;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView$1;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    iget v1, v1, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    return-void
.end method
