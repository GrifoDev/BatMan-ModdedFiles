.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$17;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$17;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$17;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get12(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$17;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get5(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$17;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get13(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$17;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iget v2, v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;->FaceAuthenticateDialogEvent(I)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FcstFaceAuthenticateDialog"

    const-string/jumbo v2, "dismiss : failed to remove bg view"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
