.class Lcom/android/launcher3/home/HomeBindController$6;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->bindInsertScreens(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;

.field final synthetic val$insertIndex:I

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;JI)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$6;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iput-wide p2, p0, Lcom/android/launcher3/home/HomeBindController$6;->val$screenId:J

    iput p4, p0, Lcom/android/launcher3/home/HomeBindController$6;->val$insertIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$6;->this$0:Lcom/android/launcher3/home/HomeBindController;

    iget-wide v2, p0, Lcom/android/launcher3/home/HomeBindController$6;->val$screenId:J

    iget v1, p0, Lcom/android/launcher3/home/HomeBindController$6;->val$insertIndex:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/launcher3/home/HomeBindController;->bindInsertScreens(JI)V

    return-void
.end method
