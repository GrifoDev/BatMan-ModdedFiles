.class Lcom/android/launcher3/folder/view/FolderPagedView$1;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/view/FolderView;)V
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

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$1;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView$1;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$000(Lcom/android/launcher3/folder/view/FolderPagedView;)Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->offsetWindowCenterTo(Z)V

    return-void
.end method
