.class final synthetic Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    iget v3, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->-$f0:I

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/ShortcutBackupManager;

    iget-object v2, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->-$f3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->lambda$-com_android_server_pm_ShortcutService_128549(ILcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->-$f0:I

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
