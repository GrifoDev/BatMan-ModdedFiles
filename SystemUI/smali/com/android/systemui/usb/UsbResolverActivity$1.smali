.class Lcom/android/systemui/usb/UsbResolverActivity$1;
.super Ljava/lang/Object;
.source "UsbResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbResolverActivity;

.field final synthetic val$guideDialogFragment:Lcom/android/internal/app/ResolverGuideDialogFragment;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbResolverActivity;Lcom/android/internal/app/ResolverGuideDialogFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbResolverActivity$1;->this$0:Lcom/android/systemui/usb/UsbResolverActivity;

    iput-object p2, p0, Lcom/android/systemui/usb/UsbResolverActivity$1;->val$guideDialogFragment:Lcom/android/internal/app/ResolverGuideDialogFragment;

    iput p3, p0, Lcom/android/systemui/usb/UsbResolverActivity$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity$1;->val$guideDialogFragment:Lcom/android/internal/app/ResolverGuideDialogFragment;

    iget v1, p0, Lcom/android/systemui/usb/UsbResolverActivity$1;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverGuideDialogFragment;->startAsUser(I)V

    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity$1;->this$0:Lcom/android/systemui/usb/UsbResolverActivity;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    :cond_0
    return-void
.end method
