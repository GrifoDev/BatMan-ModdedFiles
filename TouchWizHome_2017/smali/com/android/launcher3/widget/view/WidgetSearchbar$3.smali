.class Lcom/android/launcher3/widget/view/WidgetSearchbar$3;
.super Ljava/lang/Object;
.source "WidgetSearchbar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetSearchbar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$3;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$3;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->closeKeyboard(Z)V

    :cond_0
    return-void
.end method
