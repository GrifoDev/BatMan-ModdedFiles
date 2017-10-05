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
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v5, 0x35

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher3/util/logging/SALogging;->access$400(Lcom/android/launcher3/util/logging/SALogging;)[C

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-char v11, v21, v20

    if-ne v5, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const/16 v23, -0x66

    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->getItemCountByContainer(IZ)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const v23, 0x7f0901c2

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/util/logging/SALogging;->getAppsPageCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const v23, 0x7f0901c4

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const/16 v23, -0x66

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->getItemCountByContainer(IZ)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const v23, 0x7f0901bf

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const v23, 0x7f0901c3

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    sget-object v19, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v19, "AppsController.ViewType"

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_0

    const-string v19, "CUSTOM_GRID"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    :cond_0
    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v23, v0

    const v19, 0x7f0901c6

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    if-eqz v10, :cond_4

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->access$500(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const v23, 0x7f0901c1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [I

    sget-object v19, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    aget v23, v8, v23

    const/16 v24, 0x1

    aget v24, v8, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V

    :goto_4
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v5, 0x33

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x30

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v23, "com.sec.android.app.launcher.prefs.sa"

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher3/util/logging/SALogging;->access$600(Lcom/android/launcher3/util/logging/SALogging;)Ljava/util/HashMap;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_6
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher3/util/logging/SALogging;->access$600(Lcom/android/launcher3/util/logging/SALogging;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v24, "status_apps"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Lcom/android/launcher3/util/logging/SALogging;->access$700(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_7
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_4

    :cond_8
    return-void
.end method
