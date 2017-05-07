.class Lcom/android/launcher3/allapps/controller/AppsController$4;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->chooseViewType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    return-void
.end method
