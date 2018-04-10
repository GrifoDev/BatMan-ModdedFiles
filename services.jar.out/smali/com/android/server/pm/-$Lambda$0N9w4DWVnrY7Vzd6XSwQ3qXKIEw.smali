.class final synthetic Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutBackupManager$1;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f0:I

    iget-object v5, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager$1;->lambda$-com_android_server_pm_ShortcutBackupManager$1_13212(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f0:I

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;->$m$0()V

    return-void
.end method
