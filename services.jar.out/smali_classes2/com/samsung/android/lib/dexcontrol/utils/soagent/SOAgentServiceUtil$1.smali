.class Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$1;
.super Ljava/lang/Object;
.source "SOAgentServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->checkSellOutInfoUpdate(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$1;->val$callback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$1;->val$callback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;

    invoke-direct {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;-><init>(Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;)V

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->access$102(Z)Z

    return-void
.end method
