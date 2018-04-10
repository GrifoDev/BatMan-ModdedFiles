.class Lcom/android/server/policy/PhoneWindowManager$3;
.super Landroid/os/UEventObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUEvent event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsExtconHDMI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-get3(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get3(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DP=1"

    const-string/jumbo v2, "STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "1"

    const-string/jumbo v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
