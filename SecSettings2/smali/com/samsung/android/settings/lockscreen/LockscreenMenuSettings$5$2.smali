.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5$2;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5$2;->this$1:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5$2;->this$1:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get21(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5$2;->this$1:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5$2;->this$1:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get21(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->getOrder()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method
