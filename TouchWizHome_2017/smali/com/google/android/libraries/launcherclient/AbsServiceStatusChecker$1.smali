.class Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$1;
.super Ljava/lang/Object;
.source "AbsServiceStatusChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->checkServiceStatus(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;

.field final synthetic val$statusCallback:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$1;->this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;

    iput-object p2, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$1;->val$statusCallback:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$1;->this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;

    invoke-static {v0}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->access$000(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;)V

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$1;->val$statusCallback:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;->isRunning(Z)V

    return-void
.end method
