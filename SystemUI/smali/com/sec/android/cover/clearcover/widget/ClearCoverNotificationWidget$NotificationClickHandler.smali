.class Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;
.super Ljava/lang/Object;
.source "ClearCoverNotificationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClickHandler"
.end annotation


# instance fields
.field mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverOpenActionManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverOpenActionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->mCoverOpenAction:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverOpenActionManager;->setCoverOpenAction(Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_notification_details:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    return-void
.end method
