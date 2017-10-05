.class Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field mHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

.field final synthetic this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->mHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$500(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Lcom/android/launcher3/home/WidgetScroll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/WidgetScroll;->isWeather()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$500(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Lcom/android/launcher3/home/WidgetScroll;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->mHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$600(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/WidgetScroll;->getScrollType(Landroid/view/View;Z)I

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$500(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Lcom/android/launcher3/home/WidgetScroll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/WidgetScroll;->isWeather()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$500(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Lcom/android/launcher3/home/WidgetScroll;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->mHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$600(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/WidgetScroll;->getScrollType(Landroid/view/View;Z)I

    :cond_0
    return-void
.end method
