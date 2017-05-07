.class Lcom/android/settings/datausage/DataSavingChnPreference$DataEnabledObserver;
.super Landroid/database/ContentObserver;
.source "DataSavingChnPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataEnabledObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$DataEnabledObserver;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "DataEnabledObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "DataEnabledObserver().onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$DataEnabledObserver;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->updateEnabled()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$DataEnabledObserver;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->updateSwitchState()V

    return-void
.end method
