.class public Lcom/samsung/android/support/reminder/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/reminder/b$a;
    }
.end annotation


# static fields
.field private static synthetic o:[I


# instance fields
.field private a:Z

.field private b:Lcom/samsung/android/support/reminder/ScreenshotConfig;

.field private c:Z

.field private d:D

.field private e:D

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/PointF;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Lcom/samsung/android/support/reminder/RemindContents;

.field private m:Lcom/samsung/android/support/reminder/b$a;

.field private n:Lcom/samsung/android/support/reminder/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/support/reminder/b;->a:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/reminder/b;->c:Z

    sget-object v0, Lcom/samsung/android/support/reminder/b$a;->e:Lcom/samsung/android/support/reminder/b$a;

    iput-object v0, p0, Lcom/samsung/android/support/reminder/b;->m:Lcom/samsung/android/support/reminder/b$a;

    const-string v0, "Reminder"

    const-string v1, "Reminder library version = 151026001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/support/reminder/b;->k:Landroid/content/Context;

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isFeatureEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/reminder/b;->a:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, p0, Lcom/samsung/android/support/reminder/b;->f:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/reminder/b;->g:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/b;->h:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/reminder/b;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/reminder/b;->j:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Reminder"

    const-string v1, "DualScreen is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/support/reminder/b;->a:Z

    goto :goto_0
.end method

.method private a(I)Z
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/reminder/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/reminder/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Reminder"

    const-string v1, "Reminder package is not exsit!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.reminder.SHOW_DIALOG"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    const v1, 0x9007951

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "package_name"

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->j:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "remind_contents"

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->l:Lcom/samsung/android/support/reminder/RemindContents;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/reminder/b;->b:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    if-eqz v0, :cond_1

    const-string v0, "screenshot_config"

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->b:Lcom/samsung/android/support/reminder/ScreenshotConfig;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string v0, "option_style"

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->m:Lcom/samsung/android/support/reminder/b$a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/b$a;->a()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "scale_info"

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->i:Landroid/graphics/PointF;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/reminder/b;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->m:Lcom/samsung/android/support/reminder/b$a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    const-string v0, "is_def_loc"

    iget-boolean v1, p0, Lcom/samsung/android/support/reminder/b;->c:Z

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "def_loc_lat"

    iget-wide v6, p0, Lcom/samsung/android/support/reminder/b;->d:D

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "def_loc_long"

    iget-wide v6, p0, Lcom/samsung/android/support/reminder/b;->e:D

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/b;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    packed-switch p1, :pswitch_data_1

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->k:Landroid/content/Context;

    invoke-static {v1, v4, v0, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/reminder/b;->k:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/reminder/b;->n:Lcom/samsung/android/support/reminder/a;

    invoke-virtual {v0}, Lcom/samsung/android/support/reminder/a;->a()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [J

    move v3, v2

    :goto_3
    if-lt v3, v6, :cond_4

    move-object v0, v1

    :cond_3
    const-string v1, "option_preset_time_array_in_seconds"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v0, "option_preset_time_contextual"

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->n:Lcom/samsung/android/support/reminder/a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/a;->b()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "option_custom_time"

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->n:Lcom/samsung/android/support/reminder/a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/a;->c()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "option_location"

    iget-object v1, p0, Lcom/samsung/android/support/reminder/b;->n:Lcom/samsung/android/support/reminder/a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/a;->d()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v1, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    move v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/reminder/b;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/reminder/b;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/reminder/b$a;->values()[Lcom/samsung/android/support/reminder/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->e:Lcom/samsung/android/support/reminder/b$a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->a:Lcom/samsung/android/support/reminder/b$a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->c:Lcom/samsung/android/support/reminder/b$a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->d:Lcom/samsung/android/support/reminder/b$a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->b:Lcom/samsung/android/support/reminder/b$a;

    invoke-virtual {v1}, Lcom/samsung/android/support/reminder/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/samsung/android/support/reminder/b;->o:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.app.reminder"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/a;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/reminder/b$a;->e:Lcom/samsung/android/support/reminder/b$a;

    iput-object v0, p0, Lcom/samsung/android/support/reminder/b;->m:Lcom/samsung/android/support/reminder/b$a;

    iput-object p1, p0, Lcom/samsung/android/support/reminder/b;->l:Lcom/samsung/android/support/reminder/RemindContents;

    iput-object p2, p0, Lcom/samsung/android/support/reminder/b;->n:Lcom/samsung/android/support/reminder/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/reminder/b;->a(I)Z

    move-result v0

    return v0
.end method
