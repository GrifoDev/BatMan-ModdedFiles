.class Lcom/android/systemui/infinity/tangram/TangramSystem$1;
.super Ljava/lang/Object;
.source "TangramSystem.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/tangram/TangramSystem;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateCurrentValue(F)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->now:J

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-wide v0, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->beforeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-wide v2, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->now:J

    iput-wide v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->beforeTime:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-wide v2, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->now:J

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-wide v4, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->beforeTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->term:F

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->term:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateFrame()V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-wide v2, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->now:J

    iput-wide v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->beforeTime:J

    return-void
.end method
