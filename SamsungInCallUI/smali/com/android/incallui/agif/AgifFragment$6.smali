.class Lcom/android/incallui/agif/AgifFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifFragment;->showBubbleTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifFragment$6;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$6;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifFragment;->access$400(Lcom/android/incallui/agif/AgifFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment$6;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-virtual {v1}, Lcom/android/incallui/agif/AgifFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$6;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifFragment;->access$400(Lcom/android/incallui/agif/AgifFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment$6;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v2, v2, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v2, v3}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getChildImageView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifFragment$6;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-static {v2}, Lcom/android/incallui/agif/AgifFragment;->access$500(Lcom/android/incallui/agif/AgifFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment$6;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifFragment;->access$400(Lcom/android/incallui/agif/AgifFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/agif/AgifFragment$6;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-static {v4}, Lcom/android/incallui/agif/AgifFragment;->access$400(Lcom/android/incallui/agif/AgifFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
