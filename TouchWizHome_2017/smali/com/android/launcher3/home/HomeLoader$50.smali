.class Lcom/android/launcher3/home/HomeLoader$50;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addOrMoveItem(IIIIILandroid/content/ComponentName;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$isWidget:Z

.field final synthetic val$screen:I

.field final synthetic val$spanX:I

.field final synthetic val$spanY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;IZLandroid/content/ComponentName;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput p2, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    iput-boolean p3, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$isWidget:Z

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    iput p5, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$spanX:I

    iput p6, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$spanY:I

    iput p7, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellX:I

    iput p8, p0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$14600()Ljava/lang/Object;

    move-result-object v29

    monitor-enter v29

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$14700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    const-string v28, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "addShortcut : currentPageCount = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " addIndex = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, v23

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-gt v14, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$14800()Landroid/content/Context;

    move-result-object v30

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$isWidget:Z

    move/from16 v28, v0

    if-nez v28, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v28

    if-eqz v28, :cond_3

    const/16 v18, 0x1

    :goto_1
    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$14900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$screen:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$isWidget:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15000()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v22

    new-instance v9, Landroid/appwidget/AppWidgetHost;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15100()Landroid/content/Context;

    move-result-object v28

    const/16 v30, 0x400

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-direct {v9, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    if-eqz v22, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15200()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v28

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v28

    if-nez v28, :cond_4

    :cond_1
    const-string v28, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "addOrMoveItem : Unable to bind app widget id "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " component "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v10}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_2
    :goto_2
    if-nez v6, :cond_9

    const-string v28, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "is not exist"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v29

    :goto_3
    return-void

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v6, v10, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$spanX:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$spanY:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    goto :goto_2

    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    :cond_5
    if-eqz v18, :cond_7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    move/from16 v30, v0

    if-nez v30, :cond_6

    move-object/from16 v6, v16

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15300()Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15400()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v6

    const-wide/16 v30, -0x64

    move-wide/from16 v0, v30

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto/16 :goto_2

    :cond_9
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellY:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellX:I

    move/from16 v31, v0

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellY:I

    move/from16 v32, v0

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$15500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v28

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    if-eqz v21, :cond_b

    sget-object v28, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_UPWARD:Ljava/util/Comparator;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_a
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v30, v0

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v31, v0

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v32, v0

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v33, v0

    add-int v32, v32, v33

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v33, v0

    iget v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v30

    if-eqz v30, :cond_a

    const/16 v30, -0x1

    move/from16 v0, v30

    iput v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v30

    iput v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget-wide v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    if-eqz v18, :cond_c

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x64

    cmp-long v28, v30, v32

    if-eqz v28, :cond_e

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->setPrevContainer(J)V

    const-wide/16 v30, -0x64

    move-wide/from16 v0, v30

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    :cond_c
    :goto_5
    move-wide/from16 v0, v24

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellX:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->val$cellY:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v18, :cond_f

    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    const-string v28, "container"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v28, "screen"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v28, "cellX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v28, "cellY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$15600(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :goto_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$15800()Landroid/content/Context;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    :cond_d
    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    new-instance v30, Lcom/android/launcher3/home/HomeLoader$50$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v8}, Lcom/android/launcher3/home/HomeLoader$50$1;-><init>(Lcom/android/launcher3/home/HomeLoader$50;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->access$15900(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    :goto_7
    monitor-exit v29

    goto/16 :goto_3

    :cond_e
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/home/HomeLoader;->access$15700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$50;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/HomeLoader;->bindItems(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method
