.class final synthetic Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54$-void_onRotationChanged_int_rotation_LambdaImpl0;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onRotationChanged_int_rotation_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$rotation:I

.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54$-void_onRotationChanged_int_rotation_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54$-void_onRotationChanged_int_rotation_LambdaImpl0;->val$rotation:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54$-void_onRotationChanged_int_rotation_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54$-void_onRotationChanged_int_rotation_LambdaImpl0;->val$rotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;->-com_android_systemui_statusbar_phone_PhoneStatusBar$54_lambda$2(I)V

    return-void
.end method
