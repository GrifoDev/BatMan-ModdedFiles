.class Lcom/android/systemui/statusbar/policy/KeyButtonView$1;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longpressed: mCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->-get1(Lcom/android/systemui/statusbar/policy/KeyButtonView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performLongClick()Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->-set0(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->-get3(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->-set0(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z

    goto :goto_0
.end method
