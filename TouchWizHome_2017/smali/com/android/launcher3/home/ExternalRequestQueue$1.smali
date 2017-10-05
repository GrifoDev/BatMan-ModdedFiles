.class final Lcom/android/launcher3/home/ExternalRequestQueue$1;
.super Ljava/lang/Object;
.source "ExternalRequestQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ExternalRequestQueue;->flushExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/home/ExternalRequestInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/home/ExternalRequestInfo;Lcom/android/launcher3/home/ExternalRequestInfo;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/launcher3/home/ExternalRequestInfo;->requestTime:J

    iget-wide v2, p2, Lcom/android/launcher3/home/ExternalRequestInfo;->requestTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher3/home/ExternalRequestInfo;

    check-cast p2, Lcom/android/launcher3/home/ExternalRequestInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/home/ExternalRequestQueue$1;->compare(Lcom/android/launcher3/home/ExternalRequestInfo;Lcom/android/launcher3/home/ExternalRequestInfo;)I

    move-result v0

    return v0
.end method
