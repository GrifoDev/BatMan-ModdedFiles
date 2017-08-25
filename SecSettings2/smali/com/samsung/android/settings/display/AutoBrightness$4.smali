.class Lcom/samsung/android/settings/display/AutoBrightness$4;
.super Ljava/lang/Object;
.source "AutoBrightness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AutoBrightness;->showResetPatternDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AutoBrightness;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AutoBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AutoBrightness$4;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness$4;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AutoBrightness;->-get0(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->resetPersonalAutoBrightnessData()V

    return-void
.end method
