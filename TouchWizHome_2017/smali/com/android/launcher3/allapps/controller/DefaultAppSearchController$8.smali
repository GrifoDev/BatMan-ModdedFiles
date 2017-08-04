.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$8;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

.field final synthetic val$Query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$8;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$8;->val$Query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$8;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$700(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$8;->val$Query:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$8;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->doGalaxyAppsSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method
