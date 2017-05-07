.class public Lcom/samsung/android/framework/feature/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static ENSURE_DOCKED_VIEW_SUPPORT:Z = false

.field public static final FEATURE_ENSURE_DOCKED_VIEW:Ljava/lang/String; = "com.sec.feature.multiwindow.ensure_docked_view"

.field public static final FEATURE_LONG_DEVICE_SNAP_MODE:Ljava/lang/String; = "com.sec.feature.multiwindow.long_device_snap_mode"

.field public static final FEATURE_SNAP_WINDOW:Ljava/lang/String; = "com.sec.feature.multiwindow.snap_view"

.field public static FREEFORM_ADJUST_STACK_ORDER:Z = false

.field public static FREEFORM_DENSITY_CHANGE:Z = false

.field public static FREEFORM_FOCUSED_FRAME:Z = false

.field public static FREEFORM_GESTURE:Z = false

.field public static FREEFORM_GHOST_MODE:Z = false

.field public static FREEFORM_GUIDE_RESIZE:Z = false

.field public static FREEFORM_SLIDE_MODE:Z = false

.field public static FREEFORM_SUPPORT:Z = false

.field public static LONG_DEVICE_SNAP_MODE_SUPPORT:Z = false

.field public static MINIMIZED_DOCK_DYNAMIC_ENABLED:Z = false

.field public static MULTIINSTANCE_SUPPORT:Z = false

.field public static MULTIWINDOW_DYNAMIC_ENABLED:Z = false

.field public static SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z = false

.field public static final SAMSUNG_MULTIWINDOW_HIDE_STATUSBAR_IN_DOCKED:Z = true

.field public static final SAMSUNG_MULTIWINDOW_SUPPORT:Z = true

.field public static final SET_FREEFORM_GESTURE:Ljava/lang/String; = "db_popup_view_shortcut"

.field public static final SET_MULTIWINDOW_DYNAMIC_ENALBED:Ljava/lang/String; = "multi_window_enabled"

.field public static final SET_MULTIWINDOW_FEATURE_LIST:Ljava/lang/String; = "set_multiwindow_feature_list"

.field public static SNAP_WINDOW_SUPPORT:Z = false

.field public static final TAG:Ljava/lang/String; = "MultiWindowFeatures"

.field public static final UPDATE_DECOR_CAPTION_FEATURES:I = 0x59

.field public static final UPDATE_ENSURE_DOCKED_VIEW_SUPPORT:I = 0x40000

.field public static final UPDATE_FREEFORM_DENSITY_CHANGE:I = 0x40

.field public static final UPDATE_FREEFORM_FOCUSED_FRAME:I = 0x10

.field public static final UPDATE_FREEFORM_GESTURE:I = 0x4

.field public static final UPDATE_FREEFORM_GHOST_MODE:I = 0x8

.field public static final UPDATE_FREEFORM_GUIDE_RESIZE:I = 0x80

.field public static final UPDATE_FREEFORM_SLIDE_MODE:I = 0x20

.field public static final UPDATE_FREEFORM_SUPPORT:I = 0x2

.field public static final UPDATE_LONG_DEVICE_SNAP_MODE_SUPPORT:I = 0x100000

.field public static final UPDATE_MULTIINSTANCE_SUPPORT:I = 0x10000

.field public static final UPDATE_MULTIWINDOW_DYNAMIC_ENABLED:I = 0x20000

.field public static final UPDATE_SAMSUNG_MULTIWINDOW_ENABLED:I = 0x1

.field public static final UPDATE_SNAP_WINDOW_SUPPORT:I = 0x80000

.field public static final VAL_FREEFORM_DENSITY_CHANGE:Ljava/lang/String; = "freeform_density_change"

.field public static final VAL_FREEFORM_FOCUSED_FRAME:Ljava/lang/String; = "freeform_focused_frame"

.field public static final VAL_FREEFORM_GHOST_MODE:Ljava/lang/String; = "freeform_ghost_mode"

.field public static final VAL_FREEFORM_GUIDE_RESIZE:Ljava/lang/String; = "freeform_guide_resize"

.field public static final VAL_FREEFORM_SLIDE_MODE:Ljava/lang/String; = "freeform_slide_mode"

.field public static final VAL_FREEFORM_SUPPORT:Ljava/lang/String; = "freeform_support"

.field public static final VAL_MULTIINSTANCE_SUPPORT:Ljava/lang/String; = "multiinstance_support"

.field public static final VAL_MULTIWINDOW_DEFAULT_SETTINGS:Ljava/lang/String; = "multiwindow_enabled,freeform_density_change,freeform_focused_frame,freeform_guide_resize"

.field public static final VAL_MULTIWINDOW_ENABLED:Ljava/lang/String; = "multiwindow_enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MINIMIZED_DOCK_DYNAMIC_ENABLED:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->LONG_DEVICE_SNAP_MODE_SUPPORT:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static makeSettingDB(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static onMultiWindowSettingsChange(Landroid/os/Bundle;)I
    .locals 21

    if-nez p0, :cond_0

    const/16 v19, 0x0

    return v19

    :cond_0
    const-string/jumbo v19, "set_multiwindow_feature_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->parseSettingDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    sget-boolean v14, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    sget-boolean v15, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    sget-boolean v13, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    sget-boolean v16, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->LONG_DEVICE_SNAP_MODE_SUPPORT:Z

    const-string/jumbo v19, "multiwindow_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    const-string/jumbo v19, "freeform_support"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    const-string/jumbo v19, "freeform_ghost_mode"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    const-string/jumbo v19, "freeform_focused_frame"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    const-string/jumbo v19, "freeform_slide_mode"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    const-string/jumbo v19, "freeform_density_change"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    const-string/jumbo v19, "freeform_guide_resize"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    const-string/jumbo v19, "multiinstance_support"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    const-string/jumbo v19, "multi_window_enabled"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v19, 0x1

    :goto_0
    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    const-string/jumbo v19, "db_popup_view_shortcut"

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_1
    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    const-string/jumbo v19, "com.sec.feature.multiwindow.ensure_docked_view"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    const-string/jumbo v19, "com.sec.feature.multiwindow.snap_view"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    const-string/jumbo v19, "com.sec.feature.multiwindow.long_device_snap_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    sput-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->LONG_DEVICE_SNAP_MODE_SUPPORT:Z

    const/4 v3, 0x0

    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    move/from16 v0, v19

    if-eq v0, v14, :cond_1

    const/4 v3, 0x1

    :cond_1
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    move/from16 v0, v19

    if-eq v0, v8, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    move/from16 v0, v19

    if-eq v0, v7, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    move/from16 v0, v19

    if-eq v0, v9, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    move/from16 v0, v19

    if-eq v0, v6, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    move/from16 v0, v19

    if-eq v0, v15, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    move/from16 v0, v19

    if-eq v0, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    :cond_7
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    move/from16 v0, v19

    if-eq v0, v10, :cond_8

    or-int/lit16 v3, v3, 0x80

    :cond_8
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    move/from16 v0, v19

    if-eq v0, v12, :cond_9

    const/high16 v19, 0x10000

    or-int v3, v3, v19

    :cond_9
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    move/from16 v0, v19

    if-eq v0, v13, :cond_a

    const/high16 v19, 0x20000

    or-int v3, v3, v19

    :cond_a
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    move/from16 v0, v19

    if-eq v0, v5, :cond_b

    const/high16 v19, 0x40000

    or-int v3, v3, v19

    :cond_b
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    move/from16 v0, v19

    move/from16 v1, v16

    if-eq v0, v1, :cond_c

    const/high16 v19, 0x80000

    or-int v3, v3, v19

    :cond_c
    sget-boolean v19, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->LONG_DEVICE_SNAP_MODE_SUPPORT:Z

    move/from16 v0, v19

    if-eq v0, v11, :cond_d

    const/high16 v19, 0x100000

    or-int v3, v3, v19

    :cond_d
    return v3

    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method public static parseSettingDB(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static updateDecorCaption(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x59

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static updateMultiWindowDynamicEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
