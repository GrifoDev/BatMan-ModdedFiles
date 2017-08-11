.class Lcom/android/systemui/recents/views/RecentsView$12;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->setRecentsContainerView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "RecentsView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMenuItemClick :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLock:Z

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0684

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isInLockTaskEditMode:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v3, v6}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0685

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.MULTI_WINDOW_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0686

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x30200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "helphub:item"

    const-string/jumbo v3, "popup_opening"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "helphub:section"

    const-string/jumbo v3, "multi_window"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0687

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "voc://view/contactUs"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "packageName"

    const-string/jumbo v3, "com.android.systemui.recents"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "appId"

    const-string/jumbo v3, "53e5c21oy8"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "appName"

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f037d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "feedbackType"

    const-string/jumbo v3, "ask"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$12;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    :cond_3
    return v6
.end method
