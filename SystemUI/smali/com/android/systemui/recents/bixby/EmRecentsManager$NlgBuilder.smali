.class Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;
.super Ljava/lang/Object;
.source "EmRecentsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/bixby/EmRecentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NlgBuilder"
.end annotation


# instance fields
.field nlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

.field nlgMode:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field final synthetic this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/bixby/EmRecentsManager;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->nlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    iput-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->nlgMode:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    return-void
.end method


# virtual methods
.method addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->nlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    return-object p0
.end method

.method addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->nlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    return-object p0
.end method

.method send()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NLG is requested with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->nlgMode:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->nlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-get1(Lcom/android/systemui/recents/bixby/EmRecentsManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->nlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->nlgMode:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    return-void
.end method
