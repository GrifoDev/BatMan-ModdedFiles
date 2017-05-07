.class Lcom/android/systemui/volume/SecVolumeDialog$12;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$stream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get11(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x7

    invoke-static {v4, v8, v7}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-eq v4, v9, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get41(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_7

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get40(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v9, :cond_6

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set20(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;J)J

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get41(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_4

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$stream:I

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    :goto_2
    invoke-virtual {v6, v7, v4}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v9, v5}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$stream:I

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_b

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get15(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsDLNAStatus:Z

    if-nez v4, :cond_8

    sget-boolean v4, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v4, :cond_1

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get15(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v4

    const-string/jumbo v7, "muvo"

    invoke-virtual {v4, v7}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "STREAM_SMART_VIEW onClick : set to : Unmute"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get15(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v4

    const-string/jumbo v7, "mkev"

    if-eqz v1, :cond_a

    :goto_4
    invoke-virtual {v4, v7, v5}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayConfiguration(Ljava/lang/String;Z)I

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "STREAM_SMART_VIEW onClick : set to : mute"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    move v5, v6

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_d

    const/4 v2, 0x1

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$stream:I

    if-eqz v2, :cond_c

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    :cond_c
    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto :goto_5
.end method
