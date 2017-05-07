.class Lcom/android/systemui/qs/QSBrightnessView$2;
.super Ljava/lang/Object;
.source "QSBrightnessView.java"

# interfaces
.implements Lcom/android/systemui/settings/BrightnessDetail$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSBrightnessView;-><init>(Landroid/content/Context;ILcom/android/systemui/qs/QSPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBrightnessView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBrightnessView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSBrightnessView$2;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAutoBrightness(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView$2;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBrightnessView;->setAutoBrightnessControl(Z)Z

    move-result v0

    return v0
.end method

.method public setBrightnessTop(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView$2;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBrightnessView;->setBrightnessOnTop(Z)Z

    move-result v0

    return v0
.end method
