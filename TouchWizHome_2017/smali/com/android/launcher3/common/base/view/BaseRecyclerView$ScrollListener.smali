.class Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/base/view/BaseRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/BaseRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/base/view/BaseRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollListener;->this$0:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollListener;->this$0:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-static {v0, p3}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->access$002(Lcom/android/launcher3/common/base/view/BaseRecyclerView;I)I

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollListener;->this$0:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method
