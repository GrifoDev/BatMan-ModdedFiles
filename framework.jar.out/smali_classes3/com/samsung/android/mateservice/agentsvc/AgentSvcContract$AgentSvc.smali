.class public interface abstract Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;
.super Ljava/lang/Object;
.source "AgentSvcContract.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AgentSvc"
.end annotation


# virtual methods
.method public abstract execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
