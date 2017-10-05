.class Lcom/android/launcher3/home/HomeLoader$12;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->setPackageState(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$12;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$12;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$12;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v7, v7, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$12;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v7}, Lcom/android/launcher3/home/HomeLoader;->access$6900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_4

    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$12;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v8, v8, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$12;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v8, v8, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/item/IconInfo;->setInstallProgress(I)V

    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$12;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v8, v8, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    iget v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v8, v8, -0x9

    iput v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    instance-of v8, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v8, :cond_2

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v8, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$12;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v9, v9, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$12;->val$installInfo:Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v8, v8, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput v8, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$12;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v7}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/home/HomeLoader$12$1;

    invoke-direct {v4, p0, v3, v5}, Lcom/android/launcher3/home/HomeLoader$12$1;-><init>(Lcom/android/launcher3/home/HomeLoader$12;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/HashSet;)V

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7000()Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
