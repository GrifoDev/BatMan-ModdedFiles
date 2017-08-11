.class Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v1, 0x1

    const/16 v5, 0xf

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get1(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_battery"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gt v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f07ad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_battery"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-le v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "call_reserve"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "reserve_battery_on"

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.app.powerplanning.RESERVE_BATTERY_MAX_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reserve_battery_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
