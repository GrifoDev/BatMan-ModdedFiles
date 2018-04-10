.class Lcom/android/server/autofill/Session$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v7, "structure"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/assist/AssistStructure;

    if-nez v6, :cond_0

    const-string/jumbo v7, "AutofillSession"

    const-string/jumbo v8, "No assist structure - app might have crashed providing it"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v7, "receiverExtras"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v7, "AutofillSession"

    const-string/jumbo v8, "No receiver extras - app might have crashed providing it"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v7, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "New structure for requestId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure;->ensureData()V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v7, v9}, Lcom/android/server/autofill/Session;->-set0(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v9, Landroid/service/autofill/FillContext;

    invoke-direct {v9, v5, v6}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-wrap0(Lcom/android/server/autofill/Session;)V

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/FillContext;

    invoke-static {v9, v7, v0}, Lcom/android/server/autofill/Session;->-wrap1(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v4, Landroid/service/autofill/FillRequest;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->-get0(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v4, v5, v7, v9, v0}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/ArrayList;Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->-get3(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method
