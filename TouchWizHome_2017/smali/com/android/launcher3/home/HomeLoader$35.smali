.class Lcom/android/launcher3/home/HomeLoader$35;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$insertIndex:I

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;JI)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$35;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$35;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-wide p3, p0, Lcom/android/launcher3/home/HomeLoader$35;->val$screenId:J

    iput p5, p0, Lcom/android/launcher3/home/HomeLoader$35;->val$insertIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$35;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$35;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    iget-wide v2, p0, Lcom/android/launcher3/home/HomeLoader$35;->val$screenId:J

    iget v1, p0, Lcom/android/launcher3/home/HomeLoader$35;->val$insertIndex:I

    invoke-interface {v0, v2, v3, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindInsertScreens(JI)V

    :cond_0
    return-void
.end method
