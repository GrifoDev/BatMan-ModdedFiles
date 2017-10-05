.class Lcom/android/launcher3/allapps/model/AppsLoader$3;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->loadRemainedApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$apps:Ljava/util/List;

.field final synthetic val$heuristic:Lcom/android/launcher3/home/ManagedProfileHeuristic;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/home/ManagedProfileHeuristic;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$3;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$3;->val$heuristic:Lcom/android/launcher3/home/ManagedProfileHeuristic;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$3;->val$apps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader$3;->val$heuristic:Lcom/android/launcher3/home/ManagedProfileHeuristic;

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$3;->val$apps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processUserApps(Ljava/util/List;)V

    return-void
.end method
