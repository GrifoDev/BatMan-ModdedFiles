.class Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;
.super Landroid/os/AsyncTask;
.source "LCExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->startExtractLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$000(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$100(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "copy complete !"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
