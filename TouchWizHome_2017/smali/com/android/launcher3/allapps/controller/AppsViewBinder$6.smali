.class Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItemsToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

.field final synthetic val$apps:Ljava/util/ArrayList;

.field final synthetic val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;->val$apps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;->val$apps:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->access$100(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    return-void
.end method
