.class Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RowsParser;
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
    name = "RowsParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RowsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RowsParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RowsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1002(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;I)I

    const-string v0, "Launcher.AppsRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore rows : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RowsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1000(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
