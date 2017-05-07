.class Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/os/SmartManager;->getBatteryRemainingUsageTime(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-wrap0(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "commute_battery_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "commute_battery_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
