.class Lcom/android/settings/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    instance-of v3, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->-get0(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    if-ne p1, v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->-get1(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->-get0(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
