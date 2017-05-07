.class final synthetic Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;
.super Ljava/lang/Object;
.source "VSScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/virtualspace/VSScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_setSurface_android_view_Surface_surface_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$surface:Landroid/view/Surface;

.field private synthetic val$this:Lcom/samsung/android/server/virtualspace/VSScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;->val$this:Lcom/samsung/android/server/virtualspace/VSScreen;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;->val$surface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;->val$this:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;->val$surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->-com_samsung_android_server_virtualspace_VSScreen_lambda$3(Landroid/view/Surface;)V

    return-void
.end method
