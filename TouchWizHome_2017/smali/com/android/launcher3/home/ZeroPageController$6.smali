.class Lcom/android/launcher3/home/ZeroPageController$6;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->addZeroPageSwitch(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;

.field final synthetic val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iput-object p2, p0, Lcom/android/launcher3/home/ZeroPageController$6;->val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$500(Lcom/android/launcher3/home/ZeroPageController;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$6;->val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v4

    invoke-static {v3, v4, v10}, Lcom/android/launcher3/home/ZeroPageController;->access$1800(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v4

    invoke-static {v3, p2, v4}, Lcom/android/launcher3/home/ZeroPageController;->access$1900(Lcom/android/launcher3/home/ZeroPageController;ZZ)V

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "HOEO"

    const-string v5, "Zero page"

    const-wide/16 v6, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v4}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-static {v3, v4, v10, v8}, Lcom/android/launcher3/home/ZeroPageController;->access$2000(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/Context;ZZ)V

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$2100(Lcom/android/launcher3/home/ZeroPageController;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v4}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    const-wide/16 v6, -0x12d

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v4}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v5}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome(II)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v0, v3

    check-cast v0, Landroid/app/ActivityManager;

    move-object v2, v0

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$800(Lcom/android/launcher3/home/ZeroPageController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->semForceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "forceStopPackage exception for zero page - onCheckedChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
