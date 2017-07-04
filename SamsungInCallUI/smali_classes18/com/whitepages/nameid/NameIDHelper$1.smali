.class final Lcom/whitepages/nameid/NameIDHelper$1;
.super Ljava/lang/Object;
.source "NameIDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whitepages/nameid/NameIDHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/whitepages/nameid/ILookupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/whitepages/nameid/ILookupService;

    move-result-object v0

    invoke-static {v0}, Lcom/whitepages/nameid/NameIDHelper;->access$002(Lcom/whitepages/nameid/ILookupService;)Lcom/whitepages/nameid/ILookupService;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/whitepages/nameid/NameIDHelper;->access$102(Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Lcom/whitepages/nameid/NameIDHelper;->access$200(J)V

    return-void
.end method
