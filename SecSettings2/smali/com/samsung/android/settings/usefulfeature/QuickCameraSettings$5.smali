.class Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;
.super Ljava/lang/Object;
.source "QuickCameraSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-wrap1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "double_tab_launch"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    rem-int/lit8 v3, v0, 0x2

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
