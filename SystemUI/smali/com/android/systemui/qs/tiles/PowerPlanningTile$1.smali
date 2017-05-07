.class Lcom/android/systemui/qs/tiles/PowerPlanningTile$1;
.super Landroid/telephony/PhoneStateListener;
.source "PowerPlanningTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PowerPlanningTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$1;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "PowerPlanningTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTMStateListener onCallStateChanged(): state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$1;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-set0(Lcom/android/systemui/qs/tiles/PowerPlanningTile;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile$1;->this$0:Lcom/android/systemui/qs/tiles/PowerPlanningTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->-set0(Lcom/android/systemui/qs/tiles/PowerPlanningTile;Z)Z

    goto :goto_0
.end method
