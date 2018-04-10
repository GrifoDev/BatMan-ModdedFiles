.class Lcom/att/iqi/lib/IQIManager$3;
.super Lcom/att/iqi/IProfileChangedCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/IQIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$3;->a:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {p0}, Lcom/att/iqi/IProfileChangedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager$3;->a:Lcom/att/iqi/lib/IQIManager;

    invoke-static {v4}, Lcom/att/iqi/lib/IQIManager;->c(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager$3;->a:Lcom/att/iqi/lib/IQIManager;

    invoke-static {v4}, Lcom/att/iqi/lib/IQIManager;->c(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;

    invoke-interface {v2}, Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;->onProfileChanged()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
