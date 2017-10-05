.class Lcom/android/launcher3/util/logging/SALogging$21;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$isHomeGrid:Z

.field final synthetic val$statusLogOnly:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;ZIIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$21;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-boolean p2, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    iput p4, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    iput-boolean p5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$statusLogOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    sget-object v5, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    if-eqz v5, :cond_1

    const v5, 0x7f0901b4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    if-eqz v5, :cond_2

    const v5, 0x7f090176

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    if-eqz v5, :cond_3

    const v5, 0x7f0901d8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v7, :cond_4

    const-string v0, "1"

    :goto_3
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v5, v4, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$statusLogOnly:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v5, v3, v1, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const v5, 0x7f0901a8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v5, 0x7f090177

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const v5, 0x7f0901c5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v8, :cond_5

    const-string v0, "2"

    goto :goto_3

    :cond_5
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v7, :cond_6

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v7, :cond_6

    const-string v0, "3"

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v7, :cond_7

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v8, :cond_7

    const-string v0, "4"

    goto :goto_3

    :cond_7
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v6, :cond_8

    const-string v0, "5"

    goto :goto_3

    :cond_8
    const-string v0, ""

    goto :goto_3

    :cond_9
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v6, :cond_a

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v8, :cond_a

    const-string v0, "1"

    goto :goto_3

    :cond_a
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v7, :cond_b

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v8, :cond_b

    const-string v0, "2"

    goto :goto_3

    :cond_b
    const-string v0, ""

    goto :goto_3
.end method
