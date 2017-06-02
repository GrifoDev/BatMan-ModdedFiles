.class Lcom/android/server/policy/GlobalActions$34;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$action:Lcom/android/server/policy/GlobalActions$Action;

.field final synthetic val$isPort:Z

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$34;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$34;->val$tempView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/server/policy/GlobalActions$34;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v2, v2, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get73()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$34;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$34;->val$tempView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/server/policy/GlobalActions$34;->val$isPort:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->-wrap29(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return v5

    :cond_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get36()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$34;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get68(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    return v5

    :cond_1
    return v3
.end method
