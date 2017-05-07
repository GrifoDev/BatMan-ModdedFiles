.class public interface abstract Lcom/android/server/rmm/aidl/IRmm;
.super Ljava/lang/Object;
.source "IRmm.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rmm/aidl/IRmm$Stub;
    }
.end annotation


# virtual methods
.method public abstract startRmm()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
