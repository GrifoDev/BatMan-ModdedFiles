.class Lcom/android/launcher3/util/logging/SALogging$12;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForAppStatusLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->val$context:Landroid/content/Context;

    const-string v10, "SASettingPref"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f070198

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/16 v10, -0x66

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/logging/SALogging;->getItemCountByContainer(IZ)I

    move-result v1

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f070198

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_0
    const v9, 0x7f07019a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v9}, Lcom/android/launcher3/util/logging/SALogging;->getAppsPageCount()I

    move-result v4

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f07019a

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_1
    const v9, 0x7f070195

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/16 v10, -0x66

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/logging/SALogging;->getItemCountByContainer(IZ)I

    move-result v3

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f070195

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_2
    const v9, 0x7f070199

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f070199

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_3
    const v9, 0x7f07019c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v9, "AppsController.ViewType"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f07019c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const v9, 0x7f070197

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v10, 0x2

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f070197

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const v9, 0x7f07019b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x2

    new-array v2, v9, [I

    sget-object v9, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V

    :cond_6
    return-void
.end method
