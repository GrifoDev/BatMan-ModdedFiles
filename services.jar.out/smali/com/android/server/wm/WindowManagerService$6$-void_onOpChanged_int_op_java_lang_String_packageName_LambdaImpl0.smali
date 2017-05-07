.class final synthetic Lcom/android/server/wm/WindowManagerService$6$-void_onOpChanged_int_op_java_lang_String_packageName_LambdaImpl0;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onOpChanged_int_op_java_lang_String_packageName_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/wm/WindowManagerService$6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6$-void_onOpChanged_int_op_java_lang_String_packageName_LambdaImpl0;->val$this:Lcom/android/server/wm/WindowManagerService$6;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$6$-void_onOpChanged_int_op_java_lang_String_packageName_LambdaImpl0;->val$this:Lcom/android/server/wm/WindowManagerService$6;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$6;->-com_android_server_wm_WindowManagerService$6_lambda$1()V

    return-void
.end method
