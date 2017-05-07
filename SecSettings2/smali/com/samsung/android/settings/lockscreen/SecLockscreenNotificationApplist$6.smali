.class Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;
.super Ljava/lang/Object;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->checkAppByBixby(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

.field final synthetic val$order:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;->val$order:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;->val$order:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
