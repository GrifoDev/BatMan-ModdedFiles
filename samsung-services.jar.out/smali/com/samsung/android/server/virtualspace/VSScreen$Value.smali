.class Lcom/samsung/android/server/virtualspace/VSScreen$Value;
.super Ljava/lang/Object;
.source "VSScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/virtualspace/VSScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMsg:I

.field private mMuted:Z

.field private final mName:Ljava/lang/String;

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/virtualspace/VSScreen;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMsg:I

    iput-object p4, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public mute(Z)V
    .locals 1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMuted:Z

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMuted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyCallback()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMuted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMsg:I

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->-wrap0(Lcom/samsung/android/server/virtualspace/VSScreen;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
