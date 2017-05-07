.class Lcom/android/keyguard/KeyguardRMMView$4;
.super Ljava/lang/Object;
.source "KeyguardRMMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRMMView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRMMView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRMMView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method
