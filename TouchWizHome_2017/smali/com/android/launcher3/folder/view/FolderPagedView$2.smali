.class Lcom/android/launcher3/folder/view/FolderPagedView$2;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderPagedView;->handleIconViewStubs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderPagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$2;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLauncherBindingItemsCompleted()V
    .locals 3

    const-string v1, "FolderPagedView"

    const-string v2, "onLauncherBindingItemsCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$2;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->inflateAllIconViewStubsInBackground()V

    move-object v0, p0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/folder/view/FolderPagedView$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView$2$1;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView$2;Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
