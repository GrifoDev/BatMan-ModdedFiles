.class Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$3;
.super Ljava/lang/Object;
.source "BluetoothDualPlaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "mCancelListener :: onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    return-void
.end method
