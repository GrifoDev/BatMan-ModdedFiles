.class Lcom/samsung/android/settings/multisound/SASButtonPreference$3;
.super Ljava/lang/Object;
.source "SASButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SASButtonPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$rb:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$rb:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$cb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-get0(Lcom/samsung/android/settings/multisound/SASButtonPreference;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$rb:Landroid/widget/RadioButton;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-wrap0(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/CompoundButton;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->val$cb:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-get1(Lcom/samsung/android/settings/multisound/SASButtonPreference;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->-wrap0(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
