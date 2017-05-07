.class Lcom/android/server/display/WFDUibcManager$2;
.super Landroid/view/OrientationEventListener;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WFDUibcManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WFDUibcManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager$2;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager$2;->this$0:Lcom/android/server/display/WFDUibcManager;

    invoke-static {v0, p1}, Lcom/android/server/display/WFDUibcManager;->-set1(Lcom/android/server/display/WFDUibcManager;I)I

    :cond_0
    return-void
.end method
