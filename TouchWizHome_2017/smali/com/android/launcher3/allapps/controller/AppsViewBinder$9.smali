.class Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAppsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

.field final synthetic val$removed:Ljava/util/ArrayList;

.field final synthetic val$updated:Ljava/util/ArrayList;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;->val$updated:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;->val$removed:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;->val$updated:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;->val$removed:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAppsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-void
.end method
