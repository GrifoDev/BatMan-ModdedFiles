.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;
.super Landroid/os/Handler;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBeforeSpd:J

.field private mSpd:J

.field private mVpnData:Z

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mVpnData:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get1()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "tun0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "tun0"

    invoke-static {v6}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mVpnData:Z

    :goto_1
    const-wide/16 v4, 0xbb8

    const/4 v6, 0x3

    invoke-virtual {p0, v6, v4, v5}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    goto :goto_1

    :pswitch_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mVpnData:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "tun0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "tun0"

    invoke-static {v6}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get1()Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mVpnData:Z

    :cond_2
    :goto_2
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    goto :goto_2

    :pswitch_2
    const-string/jumbo v3, ""

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    long-to-float v4, v4

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float v2, v4, v5

    float-to-double v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4

    const-string/jumbo v4, "%.0fK/s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get0(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    float-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    const-string/jumbo v4, "%.2fK/s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    float-to-double v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    const-string/jumbo v4, "%.1fK/s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    float-to-double v4, v2

    const-wide/high16 v6, 0x40f9000000000000L    # 102400.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

    const-string/jumbo v4, "%.2fM/s"

    new-array v5, v9, [Ljava/lang/Object;

    float-to-double v6, v2

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    const-string/jumbo v4, "%.1fM/s"

    new-array v5, v9, [Ljava/lang/Object;

    float-to-double v6, v2

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$1:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->-get0(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
