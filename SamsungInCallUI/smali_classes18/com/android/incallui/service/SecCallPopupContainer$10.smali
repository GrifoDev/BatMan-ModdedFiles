.class Lcom/android/incallui/service/SecCallPopupContainer$10;
.super Ljava/lang/Object;
.source "SecCallPopupContainer.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->inflateRecordInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$10;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v6

    sub-long v0, v4, v6

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$10;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer$10;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v4}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2200(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/Chronometer;

    move-result-object v4

    invoke-static {v3, v0, v1, v4}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2300(Lcom/android/incallui/service/SecCallPopupContainer;JLandroid/widget/Chronometer;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->makeBeepSound(J)V

    return-void
.end method
