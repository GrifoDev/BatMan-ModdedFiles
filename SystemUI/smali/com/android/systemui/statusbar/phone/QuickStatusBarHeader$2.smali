.class Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get2(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getSettingsBadgeCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-set1(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateBadgeState()V

    return-void
.end method
