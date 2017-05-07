.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initPreviewArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    new-instance v0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get7(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get7(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get5(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v6}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v7}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get3(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$InfinityCallback;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZLcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$InfinityCallback;)V

    invoke-static {v8, v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-set0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;)Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get4(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get7(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get4(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$8;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get4(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;->onResume()V

    :cond_0
    return-void
.end method
