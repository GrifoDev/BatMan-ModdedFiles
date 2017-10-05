.class Lcom/android/launcher3/allapps/controller/AppsAdapter$1;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AppsAdapter"

    const-string v1, "update by defer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->notifyUpdate(Ljava/util/ArrayList;)V

    return-void
.end method
