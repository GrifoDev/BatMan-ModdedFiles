.class Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
.super Ljava/lang/Object;
.source "LightNotificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceItem"
.end annotation


# instance fields
.field private mDB:Ljava/lang/String;

.field private mPreference:Landroid/preference/Preference;

.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->mDB:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->mPreference:Landroid/preference/Preference;

    return-void
.end method


# virtual methods
.method public updatePreference()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->mPreference:Landroid/preference/Preference;

    instance-of v3, v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->mDB:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return v2

    :cond_1
    const-string/jumbo v2, "LightNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
