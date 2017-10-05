.class Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;
.super Ljava/lang/Object;
.source "AppsRestoreLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnsParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1102(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;I)I

    const-string v4, "Launcher.AppsRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore columns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1100(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getAppsGridInfo()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1100(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1000(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    const-string v4, "Launcher.AppsRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore apps grid x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1100(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1000(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1200(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1100(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1000(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    :cond_2
    :goto_0
    const-wide/16 v4, 0x0

    return-wide v4

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1300(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Launcher.AppsRestore"

    const-string v5, "restore apps grid in desktop mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v4}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1400(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1100(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v6}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1000(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    goto :goto_0
.end method
