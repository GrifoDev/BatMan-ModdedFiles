.class Lcom/android/systemui/statusbar/phone/NaviBarHideController$EmptyView;
.super Landroid/view/View;
.source "NaviBarHideController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NaviBarHideController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NaviBarHideController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NaviBarHideController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarHideController$EmptyView;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarHideController$EmptyView;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->-set0(Lcom/android/systemui/statusbar/phone/NaviBarHideController;Z)Z

    const-string/jumbo v0, "NaviBarHideController"

    const-string/jumbo v1, "EmptyView onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarHideController$EmptyView;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->-set0(Lcom/android/systemui/statusbar/phone/NaviBarHideController;Z)Z

    const-string/jumbo v0, "NaviBarHideController"

    const-string/jumbo v1, "EmptyView onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
