.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->showNotificationGuts(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field final synthetic val$animate:Z

.field final synthetic val$enr:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$isLast:Z

.field final synthetic val$show:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$show:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$enr:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$isLast:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$v:Landroid/view/View;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$show:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$enr:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$enr:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$enr:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$enr:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$show:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$isLast:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$v:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$animate:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->processNotificationGuts(ZZLandroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$18;->val$enr:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    goto :goto_0
.end method
