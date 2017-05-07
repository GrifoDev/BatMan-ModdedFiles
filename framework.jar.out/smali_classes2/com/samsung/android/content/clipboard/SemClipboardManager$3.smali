.class Lcom/samsung/android/content/clipboard/SemClipboardManager$3;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get3(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get3(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "mPasteListener is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
