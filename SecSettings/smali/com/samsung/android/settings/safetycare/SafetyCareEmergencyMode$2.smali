.class Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;
.super Landroid/telephony/PhoneStateListener;
.source "SafetyCareEmergencyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "SafetyCareEmergencyMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallStateChanged state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mInitialCallState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SafetyCareEmergencyMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get3(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get0(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    return-void
.end method
