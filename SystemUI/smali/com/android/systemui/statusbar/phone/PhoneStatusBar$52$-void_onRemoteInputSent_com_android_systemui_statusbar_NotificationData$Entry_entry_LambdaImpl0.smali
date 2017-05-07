.class final synthetic Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52$-void_onRemoteInputSent_com_android_systemui_statusbar_NotificationData$Entry_entry_LambdaImpl0;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onRemoteInputSent_com_android_systemui_statusbar_NotificationData$Entry_entry_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52$-void_onRemoteInputSent_com_android_systemui_statusbar_NotificationData$Entry_entry_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52$-void_onRemoteInputSent_com_android_systemui_statusbar_NotificationData$Entry_entry_LambdaImpl0;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52$-void_onRemoteInputSent_com_android_systemui_statusbar_NotificationData$Entry_entry_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52$-void_onRemoteInputSent_com_android_systemui_statusbar_NotificationData$Entry_entry_LambdaImpl0;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->-com_android_systemui_statusbar_phone_PhoneStatusBar$52_lambda$1(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method
