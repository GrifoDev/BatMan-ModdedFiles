.class Lcom/android/systemui/qs/external/CustomTile$1;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/CustomTile;->startUnlockAndRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$1;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$1;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->-get2(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/QSTile$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/external/CustomTile$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/CustomTile$1$1;-><init>(Lcom/android/systemui/qs/external/CustomTile$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSTile$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
