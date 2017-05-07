.class public Lcom/android/launcher3/common/customer/ItemRecord;
.super Ljava/lang/Object;
.source "ItemRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemRecord"


# instance fields
.field private mAppsAdd:Z

.field private mAppsCellOrder:I

.field private mAppsFolderName:Ljava/lang/String;

.field private mAppsForceAtoZ:Z

.field private mAppsIndex:I

.field private mAppsPreloadFolder:Z

.field private mComponentName:Ljava/lang/String;

.field private mHomeAdd:Z

.field private mHomeCellX:I

.field private mHomeCellY:I

.field private mHomeFolderName:Ljava/lang/String;

.field private mHomeIndex:I

.field private mHomeNewPage:Z

.field private mHomePreloadFolder:Z

.field private mHomeReplace:Z

.field private mHomeShortcutIcon:Landroid/graphics/Bitmap;

.field private mHomeShortcutTitle:Ljava/lang/String;

.field private mItemType:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

.field private mRemoveAfterPosition:Z

.field private mWidgetSpanX:I

.field private mWidgetSpanY:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    iput-object v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mItemType:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeAdd:Z

    iput-boolean v3, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomePreloadFolder:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeNewPage:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeReplace:Z

    iput v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeIndex:I

    iput v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeCellX:I

    iput v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeCellY:I

    iput v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mWidgetSpanX:I

    iput v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mWidgetSpanY:I

    iput-object v4, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsAdd:Z

    iput-boolean v3, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsPreloadFolder:Z

    iput v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsIndex:I

    iput v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsCellOrder:I

    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsForceAtoZ:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mRemoveAfterPosition:Z

    iput-object p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mComponentName:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->values()[Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mItemType:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    return-void
.end method


# virtual methods
.method public getAppsFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsIndex()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsIndex:I

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeCellX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeCellX:I

    return v0
.end method

.method public getHomeCellY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeCellY:I

    return v0
.end method

.method public getHomeFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeIndex()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeIndex:I

    return v0
.end method

.method public getHomeShortcutIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHomeShortcutTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mItemType:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    return-object v0
.end method

.method public getShorcutIntent()Landroid/content/Intent;
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    const-string v2, "android.intent.extra.shortcut.INTENT"

    iget-object v3, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mComponentName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public getWidgetSpanX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mWidgetSpanX:I

    return v0
.end method

.method public getWidgetSpanY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mWidgetSpanY:I

    return v0
.end method

.method public isAppsAdd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsAdd:Z

    return v0
.end method

.method public isAppsPreloadFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsPreloadFolder:Z

    return v0
.end method

.method public isHomeAdd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeAdd:Z

    return v0
.end method

.method public isHomeNewPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeNewPage:Z

    return v0
.end method

.method public isHomePreloadFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomePreloadFolder:Z

    return v0
.end method

.method public isHomeReplace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeReplace:Z

    return v0
.end method

.method public isRemoveAfterPosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mRemoveAfterPosition:Z

    return v0
.end method

.method isValid()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeAdd:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomePreloadFolder:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeFolderName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeCellX:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeCellY:I

    if-gez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsAdd:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsPreloadFolder:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsFolderName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAppsAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsAdd:Z

    return-void
.end method

.method public setAppsFolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsFolderName:Ljava/lang/String;

    return-void
.end method

.method public setAppsForceAtoZ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsForceAtoZ:Z

    return-void
.end method

.method public setAppsPosition(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsIndex:I

    iput p2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsCellOrder:I

    return-void
.end method

.method public setAppsPreloadFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mAppsPreloadFolder:Z

    return-void
.end method

.method public setHomeAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeAdd:Z

    return-void
.end method

.method public setHomeFolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeFolderName:Ljava/lang/String;

    return-void
.end method

.method public setHomePosition(ZZIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeNewPage:Z

    iput-boolean p2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeReplace:Z

    iput p3, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeIndex:I

    iput p4, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeCellX:I

    iput p5, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeCellY:I

    return-void
.end method

.method public setHomePreloadFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomePreloadFolder:Z

    return-void
.end method

.method public setRemoveAfterPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mRemoveAfterPosition:Z

    return-void
.end method

.method public setShortcutInfo(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method setShortcutInfo(Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 4

    :try_start_0
    iput-object p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {p2, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ItemRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShortcutInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWidgetSpanXY(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mWidgetSpanX:I

    iput p2, p0, Lcom/android/launcher3/common/customer/ItemRecord;->mWidgetSpanY:I

    return-void
.end method
