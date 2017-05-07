.class Lcom/android/server/am/MARsTrigger$1$1;
.super Ljava/lang/Object;
.source "MARsTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsTrigger$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MARsTrigger$1;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iput-wide p2, p0, Lcom/android/server/am/MARsTrigger$1$1;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v0, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, p0, Lcom/android/server/am/MARsTrigger$1$1;->val$currentTime:J

    invoke-static {v0, v2, v3}, Lcom/android/server/am/MARsTrigger;->-set0(Lcom/android/server/am/MARsTrigger;J)J

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v0, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$1$1;->this$1:Lcom/android/server/am/MARsTrigger$1;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v2, "com.android.server.am.ACTION_UI_SET_ARES"

    invoke-static {v1, v2}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    return-void
.end method
