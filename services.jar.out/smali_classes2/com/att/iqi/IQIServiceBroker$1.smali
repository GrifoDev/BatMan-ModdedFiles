.class Lcom/att/iqi/IQIServiceBroker$1;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "com.att.iqi.extra.IQI_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    sget-object v2, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->-set2(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$ServiceState;)Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->-wrap2(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IIQIService;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    sget-object v2, Lcom/att/iqi/IQIServiceBroker$ServiceState;->OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->-set2(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$ServiceState;)Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$1;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->tryDisconnecting()V

    goto :goto_0
.end method
