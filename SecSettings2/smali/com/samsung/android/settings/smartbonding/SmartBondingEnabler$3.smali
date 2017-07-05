.class Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;
.super Landroid/database/ContentObserver;
.source "SmartBondingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smart_bonding"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get2(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get2(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get2(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_3

    const v1, 0x7f0b1b37

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get2(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v1, "SmartBondingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSmartBondingObserver onChange() - mSmartBondingObserver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const v1, 0x7f0b1b38

    goto :goto_1
.end method
