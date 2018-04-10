.class public Lcom/att/iqi/IQIServiceBrokerExt;
.super Lcom/att/iqi/IQIServiceBroker;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IQIServiceBrokerExt$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IQIServiceBrokerExt"

.field private static mPrevState:Ljava/lang/String;


# instance fields
.field private mSimReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/att/iqi/IQIServiceBrokerExt;->mPrevState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/att/iqi/IQIServiceBrokerExt;->mPrevState:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NULL"

    sput-object v0, Lcom/att/iqi/IQIServiceBrokerExt;->mPrevState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/att/iqi/IQIServiceBrokerExt$1;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBrokerExt$1;-><init>(Lcom/att/iqi/IQIServiceBrokerExt;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mSimReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
