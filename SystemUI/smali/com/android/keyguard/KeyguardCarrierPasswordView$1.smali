.class Lcom/android/keyguard/KeyguardCarrierPasswordView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCarrierPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-get2(Lcom/android/keyguard/KeyguardCarrierPasswordView;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-wrap2(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-set0(Lcom/android/keyguard/KeyguardCarrierPasswordView;I)I

    :cond_0
    return-void
.end method
