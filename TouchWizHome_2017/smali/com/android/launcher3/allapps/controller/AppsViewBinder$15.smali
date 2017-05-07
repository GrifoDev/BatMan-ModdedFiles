.class Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsViewBinder;->finishBindingItems(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

.field final synthetic val$totalPage:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iput p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;->val$totalPage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;->val$totalPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->finishBindingItems(I)V

    return-void
.end method
