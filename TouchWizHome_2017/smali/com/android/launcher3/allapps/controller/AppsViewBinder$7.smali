.class Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAppsAddedWithPostPosition([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

.field final synthetic val$addAnimated:Ljava/util/ArrayList;

.field final synthetic val$newScreens:Ljava/util/ArrayList;

.field final synthetic val$packages:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;->val$packages:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;->val$newScreens:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;->val$addAnimated:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;->val$packages:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;->val$newScreens:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;->val$addAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAppsAddedWithPostPosition([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
