.class Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$3;
.super Landroid/content/BroadcastReceiver;
.source "AlarmServiceBoxPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$3;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$3;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->-wrap0(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    return-void
.end method
