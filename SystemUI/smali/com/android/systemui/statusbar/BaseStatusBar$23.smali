.class Lcom/android/systemui/statusbar/BaseStatusBar$23;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->performRemoveNotificationAnimation(Landroid/service/notification/StatusBarNotification;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$n:Landroid/service/notification/StatusBarNotification;

.field final synthetic val$removeView:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$23;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$23;->val$n:Landroid/service/notification/StatusBarNotification;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$23;->val$removeView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$23;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$23;->val$n:Landroid/service/notification/StatusBarNotification;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$23;->val$removeView:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method
