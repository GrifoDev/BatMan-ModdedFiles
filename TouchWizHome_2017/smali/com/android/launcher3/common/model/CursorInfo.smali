.class public Lcom/android/launcher3/common/model/CursorInfo;
.super Ljava/lang/Object;
.source "CursorInfo.java"


# instance fields
.field public final appWidgetIdIndex:I

.field public final appWidgetProviderIndex:I

.field public final cellXIndex:I

.field public final cellYIndex:I

.field public final colorIndex:I

.field public final containerIndex:I

.field public final festivalIndex:I

.field public final hiddenIndex:I

.field public final iconIndex:I

.field public final iconPackageIndex:I

.field public final iconResourceIndex:I

.field public final iconTypeIndex:I

.field public final idIndex:I

.field public final intentIndex:I

.field public final itemTypeIndex:I

.field public final lockIndex:I

.field public final newCueIndex:I

.field public final optionsIndex:I

.field public final profileIdIndex:I

.field public final rankIndex:I

.field public final restoredIndex:I

.field public final screenIndex:I

.field public final spanXIndex:I

.field public final spanYIndex:I

.field public final titleIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    const-string v0, "intent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    const-string v0, "container"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    const-string v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    const-string v0, "appWidgetId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetIdIndex:I

    const-string v0, "appWidgetProvider"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetProviderIndex:I

    const-string v0, "screen"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    const-string v0, "cellX"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    const-string v0, "cellY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    const-string v0, "spanX"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->spanXIndex:I

    const-string v0, "spanY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->spanYIndex:I

    const-string v0, "rank"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    const-string v0, "restored"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    const-string v0, "profileId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    const-string v0, "options"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->optionsIndex:I

    const-string v0, "iconType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconTypeIndex:I

    const-string v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    const-string v0, "iconPackage"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconPackageIndex:I

    const-string v0, "iconResource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconResourceIndex:I

    const-string v0, "color"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->colorIndex:I

    const-string v0, "hidden"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    const-string v0, "newCue"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->newCueIndex:I

    const-string v0, "festival"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->festivalIndex:I

    const-string v0, "lock"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/CursorInfo;->lockIndex:I

    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget v5, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconTypeIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_3

    iget v4, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconPackageIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconResourceIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v4}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v2, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v3, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-static {v2, v3, p3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget v4, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    invoke-static {p1, v4, p3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-ne v1, v4, :cond_2

    iget v5, p0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    invoke-static {p1, v5, p3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_1
    iput-boolean v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method
