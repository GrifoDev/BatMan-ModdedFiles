.class Lcom/android/launcher3/util/logging/SALogging$13;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForHomeStatusLog(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    const-string v13, "SASettingPref"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f0801ab

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderCountInHome(Landroid/content/Context;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801ab

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_0
    const v12, 0x7f0801a2

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const v12, 0x7f0801b4

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const v12, 0x7f0801b6

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const v12, 0x7f0801a3

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const v12, 0x7f0801a1

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHotseatAppItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getHotSeatAppStatusID(I)Ljava/lang/String;
    invoke-static {v12, v6}, Lcom/android/launcher3/util/logging/SALogging;->access$300(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v12, v10, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const v12, 0x7f0801a8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const v12, 0x7f0801a7

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    sget-object v12, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801a8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801a7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v1, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_4
    const v12, 0x7f0801b1

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const v12, 0x7f0801b0

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    sget-object v12, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801b1

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v11, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801b0

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v11, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_6
    const v12, 0x7f08019f

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f08019f

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_7
    const v12, 0x7f08019e

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    sget-object v12, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f08019e

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const v12, 0x7f0801a0

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    sget-object v12, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801a0

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v11, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const v12, 0x7f0801ad

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801ad

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v14}, Lcom/android/launcher3/util/logging/SALogging;->getHomePageCount()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_a
    const v12, 0x7f0801a9

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801a9

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v14}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_b
    const v12, 0x7f0801a6

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801a6

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/launcher3/util/logging/SALogUtils;->getShortcutOnHomeCount(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_c
    const v12, 0x7f0801ac

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801ac

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_d
    const v12, 0x7f08019d

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    sget-object v12, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->insertEnterSearchCount(Landroid/content/Context;Z)V

    :cond_e
    const v12, 0x7f0801b5

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const v12, 0x7f0801b2

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const v12, 0x7f0801b3

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    :cond_f
    sget-object v12, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getGSWData(Landroid/content/Context;)Lcom/android/launcher3/util/logging/SALogUtils$GSW;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801b5

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->size:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801b3

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->page:I

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801b2

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->location:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const v12, 0x7f0801aa

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v13, 0x1

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801aa

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const v12, 0x7f0801b7

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0801b7

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-static {v12, v15}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v12

    if-eqz v12, :cond_17

    const-string v12, "1"

    :goto_1
    invoke-virtual {v13, v14, v12}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const v12, 0x7f0801af

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0801af

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "2"

    :goto_2
    invoke-virtual {v13, v14, v12}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const v12, 0x7f080196

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->val$context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f080196

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v12

    if-eqz v12, :cond_19

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v14, v12}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_14
    const v12, 0x7f0801ae

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    const/4 v12, 0x2

    new-array v4, v12, [I

    sget-object v12, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v13, 0x0

    aget v13, v4, v13

    const/4 v14, 0x1

    aget v14, v4, v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V

    :cond_15
    const v12, 0x7f0801a4

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/util/logging/SALogging$13;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v13, 0x7f0801a4

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    :cond_16
    return-void

    :cond_17
    const-string v12, "0"

    goto/16 :goto_1

    :cond_18
    const-string v12, "1"

    goto :goto_2

    :cond_19
    const/4 v12, 0x0

    goto :goto_3
.end method
