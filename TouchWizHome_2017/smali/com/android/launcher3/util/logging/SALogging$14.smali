.class Lcom/android/launcher3/util/logging/SALogging$14;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertMoveFromFolderLog(JZILcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$container:J

.field final synthetic val$direction:I

.field final synthetic val$isMultiSelect:Z

.field final synthetic val$namesOfPackages:Ljava/lang/String;

.field final synthetic val$numberOfPackages:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;JZIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$14;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-wide p2, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$container:J

    iput-boolean p4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$isMultiSelect:Z

    iput p5, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$direction:I

    iput p6, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$numberOfPackages:I

    iput-object p7, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$namesOfPackages:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    sget-object v1, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$container:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$isMultiSelect:Z

    if-eqz v1, :cond_3

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$direction:I

    if-lez v1, :cond_6

    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$14;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$numberOfPackages:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$namesOfPackages:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const v1, 0x7f080195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$container:J

    const-wide/16 v6, -0x66

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$isMultiSelect:Z

    if-eqz v1, :cond_5

    const v1, 0x7f080188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const v1, 0x7f080189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
