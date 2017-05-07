.class Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

.field final synthetic val$apps:Ljava/util/ArrayList;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;->val$apps:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;->val$start:I

    iput p4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;->val$apps:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;->val$start:I

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;->val$end:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    return-void
.end method
