.class Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;
.super Ljava/lang/Object;
.source "KeyguardIrisTextPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisTextPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    return-void
.end method
