.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$1;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$1;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$1;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$100(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->requestFocus()Z

    return-void
.end method
