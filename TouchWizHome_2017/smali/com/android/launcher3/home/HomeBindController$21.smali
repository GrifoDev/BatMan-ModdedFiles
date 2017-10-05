.class Lcom/android/launcher3/home/HomeBindController$21;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$folderInfos:Ljava/util/ArrayList;

.field final synthetic val$removed:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$21;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$21;->val$folderInfos:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeBindController$21;->val$removed:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$21;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController$21;->val$folderInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController$21;->val$removed:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeBindController;->bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
