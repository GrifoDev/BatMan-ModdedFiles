.class Lcom/android/keyguard/util/ShortcutManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/util/ShortcutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/ShortcutManager$2;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager$2;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method
