.class public Lcom/android/incallui/util/SecReminderDialog;
.super Landroid/app/Activity;


# static fields
.field public static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mReminderName:Ljava/lang/String;

.field private mReminderNumber:Ljava/lang/String;

.field private mReminderTime:J

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/util/SecReminderDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/SecReminderDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createCallBackIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private createMessageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/util/SecReminderDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reminderName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    const-string v1, "reminderTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderTime:J

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/util/SecReminderDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecReminderDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    :cond_0
    const-string v0, "sem_statusbar"

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/SecReminderDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/util/SecReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    iget-object v0, p0, Lcom/android/incallui/util/SecReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/SecReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->removeRejectCallNotification()V

    invoke-virtual {p0}, Lcom/android/incallui/util/SecReminderDialog;->setReminderForCall()V

    invoke-virtual {p0}, Lcom/android/incallui/util/SecReminderDialog;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected setReminderForCall()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {p0}, Lcom/samsung/android/support/reminder/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "smsto"

    iget-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    invoke-static {v0, v1, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    invoke-static {v1, v2, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/reminder/b;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/reminder/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/support/reminder/RemindContents;

    invoke-direct {v3}, Lcom/samsung/android/support/reminder/RemindContents;-><init>()V

    const v4, 0x7f090336

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/util/SecReminderDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/support/reminder/RemindContents;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderTime:J

    iput-wide v4, v3, Lcom/samsung/android/support/reminder/RemindContents;->i:J

    iput v8, v3, Lcom/samsung/android/support/reminder/RemindContents;->a:I

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SecReminderDialog;->createMessageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/support/reminder/Action;

    invoke-direct {v4, v8, v0}, Lcom/samsung/android/support/reminder/Action;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/reminder/RemindContents;->a(Lcom/samsung/android/support/reminder/Action;)V

    invoke-direct {p0, v1}, Lcom/android/incallui/util/SecReminderDialog;->createCallBackIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/reminder/Action;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v0}, Lcom/samsung/android/support/reminder/Action;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/reminder/RemindContents;->a(Lcom/samsung/android/support/reminder/Action;)V

    new-instance v0, Lcom/samsung/android/support/reminder/a;

    invoke-direct {v0}, Lcom/samsung/android/support/reminder/a;-><init>()V

    const-wide/16 v4, 0x708

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/reminder/a;->a(J)V

    const-wide/16 v4, 0xe10

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/reminder/a;->a(J)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/reminder/a;->a(Z)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/reminder/a;->b(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v1, v3, Lcom/samsung/android/support/reminder/RemindContents;->h:Landroid/content/Intent;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/support/reminder/b;->a(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/a;)Z

    goto :goto_0
.end method
