.class Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;
.super Ljava/lang/Object;
.source "AlarmServiceBoxPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/high16 v5, 0x10000000

    invoke-static {}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onClick() mAlarmClickListener = "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-static {v3}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->-get1(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v1, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$AlarmEventCoverOpenAction;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-direct {v1, v3, v2}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$AlarmEventCoverOpenAction;-><init>(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-virtual {v3}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverOpenActionManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverOpenActionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/cover/manager/CoverOpenActionManager;->setCoverOpenAction(Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;->this$0:Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-virtual {v3}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_detail:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    return-void
.end method
