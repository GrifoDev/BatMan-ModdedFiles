.class Lcom/android/systemui/tv/pip/PipControlsView$3;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlsView$3;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$3;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    check-cast p1, Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0, p1}, Lcom/android/systemui/tv/pip/PipControlsView;->-set0(Lcom/android/systemui/tv/pip/PipControlsView;Lcom/android/systemui/tv/pip/PipControlButtonView;)Lcom/android/systemui/tv/pip/PipControlButtonView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$3;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlsView;->-get0(Lcom/android/systemui/tv/pip/PipControlsView;)Lcom/android/systemui/tv/pip/PipControlButtonView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$3;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/tv/pip/PipControlsView;->-set0(Lcom/android/systemui/tv/pip/PipControlsView;Lcom/android/systemui/tv/pip/PipControlButtonView;)Lcom/android/systemui/tv/pip/PipControlButtonView;

    goto :goto_0
.end method
