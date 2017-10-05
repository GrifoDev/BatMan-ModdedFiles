.class Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;
.source "HomeDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeDefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultHomeFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$1700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->setIsCSC(Z)V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$2900(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "container"

    iget-object v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v7}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "screen"

    invoke-static {p1, v5}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-static {p1, v5}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "y"

    invoke-static {p1, v5}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$3000(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$3100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "cellX"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$3200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "cellY"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->setInvalidFolder(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)I

    move-result v5

    const/16 v6, -0x64

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v5, v0, v1, v8, v8}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-wide v2
.end method
