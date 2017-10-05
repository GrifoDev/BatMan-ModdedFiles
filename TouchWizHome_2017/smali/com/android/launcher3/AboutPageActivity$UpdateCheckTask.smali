.class Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;
.super Landroid/os/AsyncTask;
.source "AboutPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AboutPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/android/launcher3/AboutPageActivity;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/AboutPageActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    const v1, 0x7f110017

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/AboutPageActivity;Lcom/android/launcher3/AboutPageActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;-><init>(Lcom/android/launcher3/AboutPageActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    const-string v2, "com.sec.android.app.launcher"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/AboutPageActivity;->access$500(Lcom/android/launcher3/AboutPageActivity;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/AboutPageActivity;->access$602(Lcom/android/launcher3/AboutPageActivity;I)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$700(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$300(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$400(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$700(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$300(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$300(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$400(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$700(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$400(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$400(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$300(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$700(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->this$0:Lcom/android/launcher3/AboutPageActivity;

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
