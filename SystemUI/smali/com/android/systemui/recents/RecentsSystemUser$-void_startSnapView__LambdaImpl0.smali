.class final synthetic Lcom/android/systemui/recents/RecentsSystemUser$-void_startSnapView__LambdaImpl0;
.super Ljava/lang/Object;
.source "RecentsSystemUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsSystemUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startSnapView__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/recents/RecentsSystemUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsSystemUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_startSnapView__LambdaImpl0;->val$this:Lcom/android/systemui/recents/RecentsSystemUser;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_startSnapView__LambdaImpl0;->val$this:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsSystemUser;->-com_android_systemui_recents_RecentsSystemUser_lambda$3()V

    return-void
.end method
