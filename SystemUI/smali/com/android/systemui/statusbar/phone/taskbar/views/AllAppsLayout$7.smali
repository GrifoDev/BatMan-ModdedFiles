.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showDisableConfirmationForList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

.field final synthetic val$itemList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;->val$itemList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;->val$itemList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap3(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getState()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH_EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->SEARCH:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->getState()Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->EDIT:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;->NORMAL:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->changeState(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$State;)V

    goto :goto_1
.end method
