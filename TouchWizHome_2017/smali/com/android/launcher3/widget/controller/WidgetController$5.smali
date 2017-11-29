.class Lcom/android/launcher3/widget/controller/WidgetController$5;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x43

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/widget/controller/WidgetController;->access$100(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1300(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetSearchbar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1300(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetSearchbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->openKeyboard(Z)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$5;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1300(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetSearchbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->openKeyboard()V

    goto :goto_0
.end method
