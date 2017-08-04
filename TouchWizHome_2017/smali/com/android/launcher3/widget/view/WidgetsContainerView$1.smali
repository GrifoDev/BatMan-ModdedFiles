.class Lcom/android/launcher3/widget/view/WidgetsContainerView$1;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "WidgetsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetsContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetsContainerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView$1;->this$0:Lcom/android/launcher3/widget/view/WidgetsContainerView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetsContainerView$1;->this$0:Lcom/android/launcher3/widget/view/WidgetsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/widget/view/WidgetsContainerView;->access$000(Lcom/android/launcher3/widget/view/WidgetsContainerView;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    return v1
.end method
