.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$3;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-get4(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    return-void
.end method
