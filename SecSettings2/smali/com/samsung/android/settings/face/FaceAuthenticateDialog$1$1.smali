.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$1;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->onAuthenticationError(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$1;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "onAuthenticationError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$1;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$1;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    return-void
.end method
