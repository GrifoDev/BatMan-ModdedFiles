.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3$1;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3$1;->this$1:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3$1;->this$1:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$300(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    return-void
.end method
