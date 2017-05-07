.class Lcom/android/systemui/usb/UsbResolverActivity$2;
.super Ljava/lang/Object;
.source "UsbResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbResolverActivity$2;->this$0:Lcom/android/systemui/usb/UsbResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity$2;->this$0:Lcom/android/systemui/usb/UsbResolverActivity;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    return-void
.end method
