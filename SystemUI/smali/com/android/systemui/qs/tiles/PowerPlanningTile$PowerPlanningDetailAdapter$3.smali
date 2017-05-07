.class Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;
.super Ljava/lang/Object;
.source "PowerPlanningTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "forward_call_notification_ON"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f073c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->-get1(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "forward_call_notification_ON"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
