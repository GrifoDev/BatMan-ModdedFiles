.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;->requestFocusFromBixby(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap0(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
