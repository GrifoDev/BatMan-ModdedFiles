.class Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/event/CheckLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/event/CheckLongPressHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$000(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$000(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$100(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$200(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$200(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-static {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$000(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$000(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$102(Lcom/android/launcher3/util/event/CheckLongPressHelper;Z)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/util/event/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->access$000(Lcom/android/launcher3/util/event/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    move-result v0

    goto :goto_0
.end method
