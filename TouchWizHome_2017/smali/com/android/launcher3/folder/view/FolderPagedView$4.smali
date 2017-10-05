.class Lcom/android/launcher3/folder/view/FolderPagedView$4;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderPagedView;->realTimeReorder(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

.field final synthetic val$newRank:I

.field final synthetic val$oldTranslateX:F

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderPagedView;Landroid/view/View;FI)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$oldTranslateX:F

    iput p4, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$newRank:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$400(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$oldTranslateX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$newRank:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "FolderPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realTimeReorder : parent already lost - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$v:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView$4;->val$newRank:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$500(Lcom/android/launcher3/folder/view/FolderPagedView;Landroid/view/View;I)V

    goto :goto_1
.end method
