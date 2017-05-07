.class Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation$1;
.super Ljava/lang/Object;
.source "DesktopModePresentationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation$1;->this$1:Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation;

    iput-object p2, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation$1;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DesktopModePresentationManager$ExternalPresentation$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method
