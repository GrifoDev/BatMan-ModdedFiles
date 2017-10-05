.class Lcom/android/launcher3/folder/view/FolderPagedView$2$1;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderPagedView$2;->onLauncherBindingItemsCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/view/FolderPagedView$2;

.field final synthetic val$listener:Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderPagedView$2;Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$2$1;->this$1:Lcom/android/launcher3/folder/view/FolderPagedView$2;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderPagedView$2$1;->val$listener:Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$2$1;->val$listener:Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->unregisterOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V

    return-void
.end method
