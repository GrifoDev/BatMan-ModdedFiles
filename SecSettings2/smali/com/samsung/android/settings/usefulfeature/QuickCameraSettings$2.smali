.class Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;
.super Ljava/lang/Object;
.source "QuickCameraSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;
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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/QuickCameraSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    return-void
.end method
