.class Lcom/android/launcher3/widget/view/WidgetFolder$1;
.super Ljava/lang/Object;
.source "WidgetFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetFolder;->open(Landroid/view/View;ZLjava/util/HashMap;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$1;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$1;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$100(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$1;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$100(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
