.class Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;
.super Ljava/lang/Object;
.source "AppsSearchRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->access$000(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->access$100(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-static {v2}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->access$100(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-static {v3}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->access$000(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->scrollBy(II)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->access$008(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)I

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->access$200(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->access$300(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method
