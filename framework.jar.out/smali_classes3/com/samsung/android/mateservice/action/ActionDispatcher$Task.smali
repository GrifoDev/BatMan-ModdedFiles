.class Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/action/ActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Task"


# instance fields
.field private final action:Lcom/samsung/android/mateservice/action/ActionExecutable;

.field private final args:Landroid/os/Bundle;

.field private final extra:I

.field private final flag:I

.field private startTime:J


# direct methods
.method static synthetic -set0(Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->startTime:J

    return-wide p1
.end method

.method private constructor <init>(Lcom/samsung/android/mateservice/action/ActionExecutable;Landroid/os/Bundle;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->action:Lcom/samsung/android/mateservice/action/ActionExecutable;

    iput-object p2, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->args:Landroid/os/Bundle;

    iput p3, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->flag:I

    iput p4, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->extra:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mateservice/action/ActionExecutable;Landroid/os/Bundle;IILcom/samsung/android/mateservice/action/ActionDispatcher$Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;-><init>(Lcom/samsung/android/mateservice/action/ActionExecutable;Landroid/os/Bundle;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->action:Lcom/samsung/android/mateservice/action/ActionExecutable;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Task"

    const-string/jumbo v2, "Task begins - action[0x%x], task[%d] "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->extra:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->action:Lcom/samsung/android/mateservice/action/ActionExecutable;

    iget-object v2, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->args:Landroid/os/Bundle;

    iget v3, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->flag:I

    iget v4, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->extra:I

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/mateservice/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    const-string/jumbo v1, "Task"

    const-string/jumbo v2, "Task ends - action[0x%x], task[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->extra:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isDebugLogLevel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isRoDebugLevelMid()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
