.class Lcom/android/server/policy/NaviBarForceTouchManager$1;
.super Ljava/lang/Object;
.source "NaviBarForceTouchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NaviBarForceTouchManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NaviBarForceTouchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager$1;->this$0:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager$1;->this$0:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-static {v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->-get0(Lcom/android/server/policy/NaviBarForceTouchManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    return-void
.end method
