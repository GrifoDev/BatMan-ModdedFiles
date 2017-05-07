.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;
.super Ljava/lang/Object;
.source "PocBalanceProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finishReadPoc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x2

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isPocCaseD1(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "PocBalanceProgressActivity"

    const-string/jumbo v6, "[stpoc] D2 POC completed"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v6, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get5(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v6

    invoke-static {v5, v6, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;II)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "sync"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string/jumbo v5, "recovery"

    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_3
    const-string/jumbo v5, "PocBalanceProgressActivity"

    const-string/jumbo v6, "[stpoc] D1 POC completed"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "d1_poc_index"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sec_poc_case_d1_index"

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->startReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;I)V

    const-string/jumbo v5, "settings"

    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v5

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finish()V

    goto :goto_1
.end method
