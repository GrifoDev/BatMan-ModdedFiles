.class Lcom/android/settings/datausage/DataSavingChnPreference$1;
.super Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;
.source "DataSavingChnPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$1;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-direct {p0}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$1;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v0, p1}, Lcom/android/settings/datausage/DataSavingChnPreference;->-wrap0(Lcom/android/settings/datausage/DataSavingChnPreference;Z)V

    return-void
.end method
