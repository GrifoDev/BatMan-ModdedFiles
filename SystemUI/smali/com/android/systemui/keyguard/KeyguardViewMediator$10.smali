.class Lcom/android/systemui/keyguard/KeyguardViewMediator$10;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetBendedPendingIntent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$fIntent:Landroid/content/Intent;

.field final synthetic val$pIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->val$pIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->val$fIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->val$pIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;->val$fIntent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
