.class Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAppsAddedWithNormalize(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

.field final synthetic val$addAnimated:Ljava/util/ArrayList;

.field final synthetic val$newScreens:Ljava/util/ArrayList;

.field final synthetic val$setHidden:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;->val$newScreens:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;->val$setHidden:Z

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;->val$addAnimated:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;->val$newScreens:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;->val$setHidden:Z

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;->val$addAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAppsAddedWithNormalize(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    return-void
.end method
