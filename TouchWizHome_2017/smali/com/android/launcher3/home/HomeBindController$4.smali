.class Lcom/android/launcher3/home/HomeBindController$4;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindItems(Ljava/util/ArrayList;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$end:I

.field final synthetic val$forceAnimateIcons:Z

.field final synthetic val$shortcuts:Ljava/util/ArrayList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$4;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$4;->val$shortcuts:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher3/home/HomeBindController$4;->val$start:I

    iput p4, p0, Lcom/android/launcher3/home/HomeBindController$4;->val$end:I

    iput-boolean p5, p0, Lcom/android/launcher3/home/HomeBindController$4;->val$forceAnimateIcons:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$4;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController$4;->val$shortcuts:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/home/HomeBindController$4;->val$start:I

    iget v3, p0, Lcom/android/launcher3/home/HomeBindController$4;->val$end:I

    iget-boolean v4, p0, Lcom/android/launcher3/home/HomeBindController$4;->val$forceAnimateIcons:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeBindController;->bindItems(Ljava/util/ArrayList;IIZ)V

    return-void
.end method
