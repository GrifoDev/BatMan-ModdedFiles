.class Lcom/android/launcher3/allapps/model/AppsLoader$24;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->addFolderAndBindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$addedAppsScreensFinal:Ljava/util/ArrayList;

.field final synthetic val$infos:Ljava/util/ArrayList;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->val$addedAppsScreensFinal:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->val$items:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->val$infos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3000()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1400(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->val$addedAppsScreensFinal:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->val$items:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24;->val$infos:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindFolderWithItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
