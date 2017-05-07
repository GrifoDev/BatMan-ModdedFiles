.class Lcom/samsung/android/settings/notification/SoundSettings$18;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$18;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings$18;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/media/SemSoundAssistantManager;

    move-result-object v3

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    return v2

    :cond_0
    move v1, v2

    goto :goto_0
.end method
