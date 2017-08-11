.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$5;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->makeAllAppsView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AllAppsGridAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mGridView:Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/ExpandableHeightGridView;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
