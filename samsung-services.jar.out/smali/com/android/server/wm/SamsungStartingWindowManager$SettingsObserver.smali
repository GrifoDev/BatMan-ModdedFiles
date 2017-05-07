.class Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamsungStartingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungStartingWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "samsungstarting_autocapture"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "samsungstarting_DoNotRemoveStartingWindow"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v1}, Lcom/android/server/wm/SamsungStartingWindowManager;->updateSetting()V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->updateSetting()V

    return-void
.end method
