.class Lcom/android/incallui/InCallContentViewListener$1;
.super Ljava/lang/Object;
.source "InCallContentViewListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallContentViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallContentViewListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallContentViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    # getter for: Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/InCallContentViewListener;->access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    # getter for: Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/InCallContentViewListener;->access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    iget-object v2, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    # getter for: Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/InCallContentViewListener;->access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    # getter for: Lcom/android/incallui/InCallContentViewListener;->mContentsView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/incallui/InCallContentViewListener;->access$000(Lcom/android/incallui/InCallContentViewListener;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    # invokes: Lcom/android/incallui/InCallContentViewListener;->notifyContentViewChange(II)V
    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallContentViewListener;->access$100(Lcom/android/incallui/InCallContentViewListener;II)V

    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    # operator++ for: Lcom/android/incallui/InCallContentViewListener;->mWaitingCount:I
    invoke-static {v1}, Lcom/android/incallui/InCallContentViewListener;->access$208(Lcom/android/incallui/InCallContentViewListener;)I

    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    # getter for: Lcom/android/incallui/InCallContentViewListener;->mWaitingCount:I
    invoke-static {v1}, Lcom/android/incallui/InCallContentViewListener;->access$200(Lcom/android/incallui/InCallContentViewListener;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallContentViewListener$1;->this$0:Lcom/android/incallui/InCallContentViewListener;

    invoke-virtual {v1}, Lcom/android/incallui/InCallContentViewListener;->removeListener()V

    goto :goto_0
.end method
