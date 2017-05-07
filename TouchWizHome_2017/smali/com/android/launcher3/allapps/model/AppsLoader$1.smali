.class Lcom/android/launcher3/allapps/model/AppsLoader$1;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->runDBUpdateOnWorkerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$1;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader$1;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    return-void
.end method
