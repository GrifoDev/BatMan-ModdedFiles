.class Lcom/android/launcher3/allapps/model/AppsModel$7;
.super Ljava/lang/Object;
.source "AppsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsModel;->hideApps(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsModel;

.field final synthetic val$contentValues:Ljava/util/ArrayList;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->val$contentValues:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2500(Lcom/android/launcher3/allapps/model/AppsModel;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsModel;->access$2400()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->val$contentValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsModel$7;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
