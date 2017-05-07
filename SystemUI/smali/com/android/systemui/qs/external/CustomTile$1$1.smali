.class Lcom/android/systemui/qs/external/CustomTile$1$1;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/CustomTile$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/external/CustomTile$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/CustomTile$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$1$1;->this$1:Lcom/android/systemui/qs/external/CustomTile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$1$1;->this$1:Lcom/android/systemui/qs/external/CustomTile$1;

    iget-object v1, v1, Lcom/android/systemui/qs/external/CustomTile$1;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get4(Lcom/android/systemui/qs/external/CustomTile;)Landroid/service/quicksettings/IQSTileService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onUnlockComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
