.class public Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;
.source "AppsDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultAppsFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

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

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$800(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->setIsCSC(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$900(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "rank"

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    iget v2, v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$1000(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "screen"

    const-string v2, "screen"

    invoke-static {p1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$1100(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "container"

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;->this$0:Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->access$102(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;J)J

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setIsCSC(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->setIsCSC(Z)V

    return-void
.end method
