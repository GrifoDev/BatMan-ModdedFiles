.class Lcom/android/launcher3/home/ScreenGridHelper$2;
.super Ljava/lang/Object;
.source "ScreenGridHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ScreenGridHelper;->applyGridChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ScreenGridHelper;

.field final synthetic val$homeItem:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ScreenGridHelper;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridHelper$2;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    iput-object p2, p0, Lcom/android/launcher3/home/ScreenGridHelper$2;->val$homeItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper$2;->val$homeItem:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper$2;->this$0:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-static {v4}, Lcom/android/launcher3/home/ScreenGridHelper;->access$500(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/HomeController;

    move-result-object v4

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateFolderGrid()V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    return-void
.end method
