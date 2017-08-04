.class Lcom/android/launcher3/widget/WidgetHostViewLoader$1;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$pInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$pInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$000(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$102(Lcom/android/launcher3/widget/WidgetHostViewLoader;I)I

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$000(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v2}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$100(Lcom/android/launcher3/widget/WidgetHostViewLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$pInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->val$options:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$300(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v2}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$200(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
