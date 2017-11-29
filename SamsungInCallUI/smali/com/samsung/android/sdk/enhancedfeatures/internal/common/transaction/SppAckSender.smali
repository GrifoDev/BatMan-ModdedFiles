.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$BindState;,
        Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$IdleState;,
        Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;
    }
.end annotation


# static fields
.field public static final EXTRA_ACK:Ljava/lang/String; = "ack"

.field public static final EXTRA_NOTI_ID:Ljava/lang/String; = "notificationId"

.field public static final SPP_PUSH_REQUEST_SERVICE:Ljava/lang/String; = "com.sec.spp.push.RequestService"

.field public static final SPP_SERVICE_INTENT:Ljava/lang/String; = "com.sec.spp.push.PUSH_CLIENT_SERVICE_ACTION"

.field private static final TAG:Ljava/lang/String; = "SppAckSender"

.field public static final TOKEN_IND_SVC_CONNECTED:I = 0x0

.field public static final TOKEN_REQ_ACK:I = 0x1


# instance fields
.field private mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mServiceBinder:Lcom/sec/spp/push/IPushClientService;

.field private mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

.field private mStopListner:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$IdleState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$BindState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$BindState;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mStopListner:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;)Lcom/sec/spp/push/IPushClientService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mServiceBinder:Lcom/sec/spp/push/IPushClientService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;Lcom/sec/spp/push/IPushClientService;)Lcom/sec/spp/push/IPushClientService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mServiceBinder:Lcom/sec/spp/push/IPushClientService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mStopListner:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender$SppAckSenderStopListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->bind()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->token2str(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method private bind()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.spp.push.PUSH_CLIENT_SERVICE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.spp.push"

    const-string v2, "com.sec.spp.push.RequestService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind spp service result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SppAckSender"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private token2str(I)Ljava/lang/String;
    .locals 5

    packed-switch p1, :pswitch_data_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "UNKNOWN TOKEN(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "TOKEN_IND_SVC_CONNECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "TOKEN_REQ_ACK"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public create()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SppAckSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "SppAckSender"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "destroy"

    const-string v1, "SppAckSender"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mServiceBinder:Lcom/sec/spp/push/IPushClientService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public start(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/SppAckSender;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
