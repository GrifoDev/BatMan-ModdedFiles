.class Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4$2;
.super Ljava/lang/Object;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4$2;->this$1:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4$2;->this$1:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4$2;->this$1:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)I

    move-result v1

    const v2, 0x7f120a65

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    return-void
.end method
