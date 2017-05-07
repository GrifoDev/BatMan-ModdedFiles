.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CalendarManager.java"


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

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->controlCalendarDataServiceConnection(I)V

    return-void
.end method
