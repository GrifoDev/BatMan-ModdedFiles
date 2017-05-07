.class Lcom/android/launcher3/home/ManagedProfileHeuristic$1;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeWorkFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/common/base/item/IconInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ManagedProfileHeuristic;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ManagedProfileHeuristic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic$1;->this$0:Lcom/android/launcher3/home/ManagedProfileHeuristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/base/item/IconInfo;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    check-cast p2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/home/ManagedProfileHeuristic$1;->compare(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/base/item/IconInfo;)I

    move-result v0

    return v0
.end method
