.class Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$2;
.super Ljava/lang/Object;
.source "ClearCoverMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverOpenActionManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverOpenActionManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverOpenActionManager;->setCoverOpenAction(Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_detail:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    return-void
.end method
