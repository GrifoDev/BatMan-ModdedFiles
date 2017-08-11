.class Lcom/samsung/android/settings/NewModePreview$21;
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

    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckedTextView;

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get5(Lcom/samsung/android/settings/NewModePreview;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_custom"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4, v7}, Lcom/samsung/android/settings/NewModePreview;->-set1(Lcom/samsung/android/settings/NewModePreview;Z)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red_temp"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green_temp"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue_temp"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "ModePreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Custom off (keep) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v5}, Lcom/samsung/android/settings/NewModePreview;->-get5(Lcom/samsung/android/settings/NewModePreview;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/NewModePreview;->-wrap2(Lcom/samsung/android/settings/NewModePreview;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_custom"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4, v6}, Lcom/samsung/android/settings/NewModePreview;->-set1(Lcom/samsung/android/settings/NewModePreview;Z)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red_temp"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green_temp"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue_temp"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ge v2, v6, :cond_1

    if-ge v1, v6, :cond_1

    if-ge v0, v6, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red_temp"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green_temp"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue_temp"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "ModePreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Custom on(restore) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview$21;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v5}, Lcom/samsung/android/settings/NewModePreview;->-get5(Lcom/samsung/android/settings/NewModePreview;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/NewModePreview;->-wrap2(Lcom/samsung/android/settings/NewModePreview;Z)V

    goto/16 :goto_0
.end method
