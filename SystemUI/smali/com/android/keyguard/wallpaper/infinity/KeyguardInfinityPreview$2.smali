.class Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$2;
.super Ljava/lang/Object;
.source "KeyguardInfinityPreview.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZLcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$InfinityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$2;->this$0:Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$2;->this$0:Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;->-get1(Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;)Lcom/android/keyguard/wallpaper/infinity/GalaxyViewCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/infinity/GalaxyViewCircle;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$2;->this$0:Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;->reset()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$2;->this$0:Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;->-wrap0(Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;)V

    const/4 v0, 0x1

    return v0
.end method
