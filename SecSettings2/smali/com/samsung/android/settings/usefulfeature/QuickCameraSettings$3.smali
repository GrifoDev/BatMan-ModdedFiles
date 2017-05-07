.class Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;
.super Ljava/lang/Object;
.source "QuickCameraSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->quickCameraDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lcd_curtain"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "double_tab_launch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method
