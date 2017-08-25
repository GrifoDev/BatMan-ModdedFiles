.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$8;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getForceImmersiveHelpDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get3(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
