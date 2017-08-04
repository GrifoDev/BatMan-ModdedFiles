.class public Lcom/android/launcher3/widget/model/WidgetPreviewUtils;
.super Ljava/lang/Object;
.source "WidgetPreviewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/model/WidgetPreviewUtils$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetPreviewUtils"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private final mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/model/WidgetPreviewUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;-><init>()V

    return-void
.end method

.method private generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget v1, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils$SingletonHolder;->access$100()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-result-object v0

    return-object v0
.end method

.method private getMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 1

    instance-of v0, p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .locals 27

    if-gez p3, :cond_0

    const p3, 0x7fffffff

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :cond_1
    :goto_0
    if-eqz v12, :cond_6

    const/16 v24, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v23

    if-eqz v24, :cond_7

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    :goto_2
    const/high16 v20, 0x3f800000    # 1.0f

    if-eqz p4, :cond_2

    const/4 v4, 0x0

    aput v6, p4, v4

    :cond_2
    move/from16 v0, p3

    if-le v6, v0, :cond_3

    move/from16 v0, p3

    int-to-float v4, v0

    int-to-float v5, v6

    div-float v20, v4, v5

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v20, v4

    if-eqz v4, :cond_4

    int-to-float v4, v6

    mul-float v4, v4, v20

    float-to-int v6, v4

    int-to-float v4, v7

    mul-float v4, v4, v20

    float-to-int v7, v4

    :cond_4
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v6

    div-int/lit8 v25, v4, 0x2

    if-eqz v24, :cond_8

    const/4 v4, 0x0

    add-int v5, v25, v6

    move/from16 v0, v25

    invoke-virtual {v12, v0, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v12, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v4, v0, v3, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getBadgeBitmap(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    :cond_5
    const-string v4, "WidgetPreviewUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->previewImage:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " for provider: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v11

    iget-object v4, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    mul-int v6, v4, v22

    iget-object v4, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v4

    mul-int v7, v4, v23

    goto/16 :goto_2

    :cond_8
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget v9, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02002c

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/util/BitmapUtils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    int-to-float v4, v9

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v4, v0

    mul-int/lit8 v5, v18, 0x2

    add-int/2addr v5, v9

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, v20

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadIcon(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_9

    int-to-float v4, v6

    int-to-float v5, v9

    mul-float v5, v5, v16

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int v14, v4, v25

    int-to-float v4, v7

    int-to-float v5, v9

    mul-float v5, v5, v16

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v26, v0

    int-to-float v4, v9

    mul-float v4, v4, v16

    float-to-int v4, v4

    add-int/2addr v4, v14

    int-to-float v5, v9

    mul-float v5, v5, v16

    float-to-int v5, v5

    add-int v5, v5, v26

    move/from16 v0, v26

    invoke-virtual {v15, v14, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v15, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_4
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :catch_0
    move-exception v13

    const-string v4, "WidgetPreviewUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resources.NotFoundExceptio:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
