.class Lcom/android/launcher3/allapps/controller/AppsController$20;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->createFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$snapToPage:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$20;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$20;->val$snapToPage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$20;->val$snapToPage:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$20;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$20;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$20;->val$snapToPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method
