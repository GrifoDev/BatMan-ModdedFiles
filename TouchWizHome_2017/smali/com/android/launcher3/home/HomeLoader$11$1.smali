.class Lcom/android/launcher3/home/HomeLoader$11$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$11;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$11;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$11$1;->this$1:Lcom/android/launcher3/home/HomeLoader$11;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$11$1;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$11$1;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$11$1;->this$1:Lcom/android/launcher3/home/HomeLoader$11;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$11;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$11$1;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$11$1;->val$updates:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method
