.class Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsViewBinder;->updateUnavailableComponent(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

.field final synthetic val$disabledPackages:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;->val$disabledPackages:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput p4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;->val$disabledPackages:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;->val$reason:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->updateUnavailableComponent(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    return-void
.end method
