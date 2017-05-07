.class Lcom/android/server/LockSettingsStrongAuth$2;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsStrongAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsStrongAuth$2;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    const-string/jumbo v0, "LockSettings"

    const-string/jumbo v1, "strong Auth for 24 hours!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$2;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$2;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    invoke-static {v1}, Lcom/android/server/LockSettingsStrongAuth;->-get0(Lcom/android/server/LockSettingsStrongAuth;)I

    move-result v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method
