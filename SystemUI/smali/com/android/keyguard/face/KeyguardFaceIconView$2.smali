.class Lcom/android/keyguard/face/KeyguardFaceIconView$2;
.super Ljava/lang/Object;
.source "KeyguardFaceIconView.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/face/KeyguardFaceIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/face/KeyguardFaceIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap1(Lcom/android/keyguard/face/KeyguardFaceIconView;I)V

    :cond_1
    return-void
.end method
