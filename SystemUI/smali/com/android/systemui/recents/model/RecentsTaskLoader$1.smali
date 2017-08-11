.class Lcom/android/systemui/recents/model/RecentsTaskLoader$1;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;->this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryEvicted(Lcom/android/systemui/recents/model/Task$TaskKey;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;->this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->-get0(Lcom/android/systemui/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
