.class final synthetic Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$dockHasActivity:Z

.field private synthetic val$info:Landroid/content/pm/ActivityInfo;

.field private synthetic val$minimized:Z

.field private synthetic val$this:Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;ZZLandroid/content/pm/ActivityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;->val$minimized:Z

    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;->val$dockHasActivity:Z

    iput-object p4, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;->val$info:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;->val$this:Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;->val$minimized:Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;->val$dockHasActivity:Z

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_pm_ActivityInfo_info_LambdaImpl0;->val$info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->-com_android_systemui_stackdivider_Divider$MultiWindowEventListener_lambda$3(ZZLandroid/content/pm/ActivityInfo;)V

    return-void
.end method
