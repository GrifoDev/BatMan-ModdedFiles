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

.field final synthetic val$numberOfPackages:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;JZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$14;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-wide p2, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$container:J

    iput-boolean p4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$isMultiSelect:Z

    iput p5, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$direction:I

    iput p6, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$numberOfPackages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-wide v4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$isMultiSelect:Z

    if-eqz v3, :cond_3

    const v3, 0x7f0901b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$direction:I

    if-lez v3, :cond_6

    const v3, 0x7f09013e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$14;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$numberOfPackages:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return-void

    :cond_3
    const v3, 0x7f0901b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$container:J

    const-wide/16 v6, -0x66

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher3/util/logging/SALogging$14;->val$isMultiSelect:Z

    if-eqz v3, :cond_5

    const v3, 0x7f0901a5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const v3, 0x7f0901a6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const v3, 0x7f09013f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
