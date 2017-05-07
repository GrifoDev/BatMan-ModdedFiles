.class Lcom/android/systemui/stackdivider/DividerPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerPanel;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "com.samsung.android.intent.action.POPUP_GUIDE_SNAP_TARGET_FULLSCREEN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    const-string/jumbo v1, "appRequest"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->showSnapWindowGuideView(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
