.class Lcom/android/systemui/statusbar/NotificationMoreCue$2;
.super Ljava/lang/Object;
.source "NotificationMoreCue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMoreCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMoreCue;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMoreCue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMoreCue$2;->this$0:Lcom/android/systemui/statusbar/NotificationMoreCue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue$2;->this$0:Lcom/android/systemui/statusbar/NotificationMoreCue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMoreCue$2;->this$0:Lcom/android/systemui/statusbar/NotificationMoreCue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMoreCue;->-get1(Lcom/android/systemui/statusbar/NotificationMoreCue;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationMoreCue;->-wrap0(Lcom/android/systemui/statusbar/NotificationMoreCue;Landroid/view/View;)V

    return-void
.end method
