.class final synthetic Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$currentId:I

.field private synthetic val$this:Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1;->val$this:Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1;->val$currentId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1;->val$this:Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1;->val$currentId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->-com_android_systemui_statusbar_policy_UserSwitcherController$2_lambda$2(I)V

    return-void
.end method
