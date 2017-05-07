.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;
.super Landroid/os/AsyncTask;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

.field final synthetic val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

.field final synthetic val$todayEndTime:J

.field final synthetic val$todayStartTime:J

.field final synthetic val$todayTimezoneStartTime:J


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iput-wide p2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$todayStartTime:J

    iput-wide p4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$todayEndTime:J

    iput-wide p6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$todayTimezoneStartTime:J

    iput-object p8, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$todayStartTime:J

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$todayEndTime:J

    iget-wide v6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$todayTimezoneStartTime:J

    invoke-static/range {v1 .. v7}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJJ)Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iget-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$todayStartTime:J

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$todayEndTime:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJ)Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;)V

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$10;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;->onCompleted(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
