.class final enum Lcom/android/launcher3/executor/StateParamHelper$Type$3;
.super Lcom/android/launcher3/executor/StateParamHelper$Type;
.source "StateParamHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/executor/StateParamHelper$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/executor/StateParamHelper$Type;-><init>(Ljava/lang/String;ILcom/android/launcher3/executor/StateParamHelper$1;)V

    return-void
.end method


# virtual methods
.method check(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
