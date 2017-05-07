.class Lcom/samsung/android/settings/PrivacyResetSettings$3;
.super Ljava/lang/Object;
.source "PrivacyResetSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/PrivacyResetSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacyResetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/PrivacyResetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_silent_auto_reset"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10038b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz v0, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap2(Lcom/samsung/android/settings/PrivacyResetSettings;Z)V

    return v2

    :cond_1
    move v1, v3

    goto :goto_0
.end method
