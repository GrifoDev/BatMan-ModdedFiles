.class public final Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
.super Ljava/lang/Object;
.source "PathRuleInfo.java"


# instance fields
.field private apps:[Ljava/lang/String;

.field private executionType:Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private isCalleePathRule:Z

.field private isFromSimulator:Z

.field private isRoot:Z

.field private pathRuleId:Ljava/lang/String;

.field private pathRuleName:Ljava/lang/String;

.field private sampleUtterance:Ljava/lang/String;

.field private states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/State;",
            ">;"
        }
    .end annotation
.end field

.field private utterance:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/State;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->executionType:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->executionType:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isRoot:Z

    iput-boolean p9, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isCalleePathRule:Z

    iput-boolean p10, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isFromSimulator:Z

    iput-object p11, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->states:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getApps()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    return-object v0
.end method

.method public getExecutionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->executionType:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRuleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleUtterance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    return-object v0
.end method

.method public getStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/State;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->states:Ljava/util/List;

    return-object v0
.end method

.method public getUtterance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    return-object v0
.end method

.method public isCalleePathRule()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isCalleePathRule:Z

    return v0
.end method

.method public isFromSimulator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isFromSimulator:Z

    return v0
.end method

.method public isRoot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isRoot:Z

    return v0
.end method
