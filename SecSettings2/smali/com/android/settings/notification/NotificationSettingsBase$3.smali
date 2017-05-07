.class Lcom/android/settings/notification/NotificationSettingsBase$3;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettingsBase;->setupImportancePrefs(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget v5, v5, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/settings/notification/NotificationBackend;->setImportance(Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->updateDependents(I)V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v4, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v2}, Lcom/android/settings/notification/NotificationSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10014e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_0
    const/16 v0, -0x3e8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
