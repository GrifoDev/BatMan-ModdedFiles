.class Lcom/android/server/DrmMediaResourceHelper$1;
.super Ljava/lang/Object;
.source "DrmEventService.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmMediaResourceHelper;


# direct methods
.method constructor <init>(Lcom/android/server/DrmMediaResourceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3}, Lcom/android/server/DrmMediaResourceHelper;->-get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAdd size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v3}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v3}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isSecured()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3, v1}, Lcom/android/server/DrmMediaResourceHelper;->-wrap1(Lcom/android/server/DrmMediaResourceHelper;I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3}, Lcom/android/server/DrmMediaResourceHelper;->-get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAdd secure = true, pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3, v1}, Lcom/android/server/DrmMediaResourceHelper;->-wrap0(Lcom/android/server/DrmMediaResourceHelper;I)Z

    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3}, Lcom/android/server/DrmMediaResourceHelper;->-get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAdd ret of toggle CPU boost to ON =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v0}, Lcom/android/server/DrmMediaResourceHelper;->-get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Onerror "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemove(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8}, Lcom/android/server/DrmMediaResourceHelper;->-get0(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8}, Lcom/android/server/DrmMediaResourceHelper;->-get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "onRemove size = 0 (All resources removed)"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8}, Lcom/android/server/DrmMediaResourceHelper;->-get0(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v8, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v8, v6, v11}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8, v6}, Lcom/android/server/DrmMediaResourceHelper;->-wrap2(Lcom/android/server/DrmMediaResourceHelper;I)V

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8}, Lcom/android/server/DrmMediaResourceHelper;->-get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onRemove toggle CPU boost to OFF for pid =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8}, Lcom/android/server/DrmMediaResourceHelper;->-get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onRemove size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8}, Lcom/android/server/DrmMediaResourceHelper;->-get0(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8}, Lcom/android/server/DrmMediaResourceHelper;->-get0(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v0, 0x0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v4}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v8

    if-ne v8, v6, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    sget-object v8, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v8, v6, v11}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8}, Lcom/android/server/DrmMediaResourceHelper;->-get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onRemove toggle CPU boost to OFF for pid for multiple objs =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/DrmMediaResourceHelper$1;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v8, v6}, Lcom/android/server/DrmMediaResourceHelper;->-wrap2(Lcom/android/server/DrmMediaResourceHelper;I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
