.class Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsFolderParser;
.super Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;
.source "AppsRestoreLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreAppsFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsFolderParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1800(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
