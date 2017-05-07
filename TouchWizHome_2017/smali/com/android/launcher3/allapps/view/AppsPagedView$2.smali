.class Lcom/android/launcher3/allapps/view/AppsPagedView$2;
.super Ljava/lang/Object;
.source "AppsPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/AppsPagedView;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$2;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$2;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$2;->val$onComplete:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method
