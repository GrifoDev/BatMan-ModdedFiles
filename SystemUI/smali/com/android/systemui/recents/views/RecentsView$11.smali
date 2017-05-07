.class Lcom/android/systemui/recents/views/RecentsView$11;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->setRecentsContainerView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get8(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/PopupMenu;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLock:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get6(Lcom/android/systemui/recents/views/RecentsView;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isRecentsViewVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get2(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get6(Lcom/android/systemui/recents/views/RecentsView;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get6(Lcom/android/systemui/recents/views/RecentsView;)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v0, "none"

    :goto_1
    const-string/jumbo v1, "RecentsView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick(MoreButton) :: mLockMenuItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get8(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/PopupMenu;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get6(Lcom/android/systemui/recents/views/RecentsView;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get6(Lcom/android/systemui/recents/views/RecentsView;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "visible"

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "invisible"

    goto :goto_1
.end method
