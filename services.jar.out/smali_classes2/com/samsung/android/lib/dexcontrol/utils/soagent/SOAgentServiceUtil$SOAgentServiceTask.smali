.class Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;
.super Landroid/os/AsyncTask;
.source "SOAgentServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SOAgentServiceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;->mCallback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v9, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->getInstance()Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;

    move-result-object v3

    aget-object v4, p1, v8

    const/4 v5, 0x1

    aget-object v5, p1, v5

    const/4 v6, 0x2

    aget-object v6, p1, v6

    aget-object v7, p1, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentService;->sendAccessoryInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SOAgentServiceTask End - result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;->mCallback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;->onSendSOAgentLogResult(Z)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->access$102(Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil$SOAgentServiceTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SOAgentServiceTask Start"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
