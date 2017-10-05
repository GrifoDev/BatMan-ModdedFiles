.class Lcom/android/launcher3/util/logging/SALogging$24;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/logging/SALogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v11, "Launcher.SALogging"

    const-string v12, "mUpdateStatusLogValuesForHomeItem - run"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderCountInHome(Landroid/content/Context;)I

    move-result v6

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d5

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getHotseatAppItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-static {v11, v5}, Lcom/android/launcher3/util/logging/SALogging;->access$800(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v11, v8, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v0

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d2

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d1

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v9

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901db

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v9, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901da

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v9, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901c9

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v1

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901c8

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901ca

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomePageCount()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d3

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d3

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d0

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/launcher3/util/logging/SALogUtils;->getShortcutOnHomeCount(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d6

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getGSWData(Landroid/content/Context;)Lcom/android/launcher3/util/logging/SALogUtils$GSW;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901e0

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->size:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901de

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->page:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901dc

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->location:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogging;->access$500(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0901d4

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
