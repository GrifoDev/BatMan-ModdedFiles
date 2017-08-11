.class Lcom/samsung/android/settings/NewModePreview$22;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/NewModePreview;->initColorBalance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$22;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$22;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v1}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$22;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v1}, Lcom/samsung/android/settings/NewModePreview;->-wrap1(Lcom/samsung/android/settings/NewModePreview;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.POC_BALANCE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$22;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/NewModePreview;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
