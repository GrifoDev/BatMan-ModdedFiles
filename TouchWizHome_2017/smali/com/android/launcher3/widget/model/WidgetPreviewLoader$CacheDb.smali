.class Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheDb"
.end annotation


# static fields
.field private static final COLUMN_COMPONENT:Ljava/lang/String; = "componentName"

.field private static final COLUMN_LAST_UPDATED:Ljava/lang/String; = "lastUpdated"

.field private static final COLUMN_PACKAGE:Ljava/lang/String; = "packageName"

.field private static final COLUMN_PREVIEW_BITMAP:Ljava/lang/String; = "preview_bitmap"

.field private static final COLUMN_SIZE:Ljava/lang/String; = "size"

.field private static final COLUMN_USER:Ljava/lang/String; = "profileId"

.field private static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x4

.field private static final TABLE_NAME:Ljava/lang/String; = "shortcut_and_widget_previews"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "widgetpreviews.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private clearDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS shortcut_and_widget_previews"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS shortcut_and_widget_previews (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, size TEXT NOT NULL, packageName TEXT NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, preview_bitmap BLOB, PRIMARY KEY (componentName, profileId, size) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-eq p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-eq p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
