.class Lcom/android/settings/deviceinfo/Status$7;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Status;->requestFocusFromBixby(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$7;->this$0:Lcom/android/settings/deviceinfo/Status;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/Status$7;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$7;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$7;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$7;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$7;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$7;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method
