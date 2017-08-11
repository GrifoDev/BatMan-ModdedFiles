.class final Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;
.super Ljava/lang/Object;
.source "PowerPlanningTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PowerPlanningTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerPlanningDetailAdapter"
.end annotation


# instance fields
.field private mExtendBattreySwitch:Landroid/widget/Switch;

.field private mForwardBatterySwitch:Landroid/widget/Switch;

.field private mPowerPlanningHeader:Landroid/widget/TextView;

.field private mReserveBatterySwitch:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mExtendBattreySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mForwardBatterySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mReserveBatterySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040125

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f1303a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mPowerPlanningHeader:Landroid/widget/TextView;

    const v0, 0x7f1303ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mReserveBatterySwitch:Landroid/widget/Switch;

    const v0, 0x7f1303b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mExtendBattreySwitch:Landroid/widget/Switch;

    const v0, 0x7f1303b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mForwardBatterySwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mPowerPlanningHeader:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f07a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f07a3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mReserveBatterySwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "reserve_battery_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mExtendBattreySwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "commute_battery_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mForwardBatterySwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "forward_call_notification_ON"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mReserveBatterySwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mExtendBattreySwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->mForwardBatterySwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f07a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 0

    return p1
.end method
