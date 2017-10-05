.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;
.super Ljava/lang/Object;
.source "HomeRestoreLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnsParser"
.end annotation


# instance fields
.field private mIsHomeOnlyData:Z

.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->mIsHomeOnlyData:Z

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1402(Lcom/android/launcher3/home/HomeRestoreLayoutParser;I)I

    const-string v1, "Launcher.HomeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore columns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1500(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1300(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Launcher.HomeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore home grid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    aget v2, v0, v4

    aget v3, v0, v5

    iget-boolean v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->mIsHomeOnlyData:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1700(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Launcher.HomeRestore"

    const-string v2, "restore home grid in desktop mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1800(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1300(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->mIsHomeOnlyData:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    goto :goto_0
.end method
