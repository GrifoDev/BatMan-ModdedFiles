.class Lcom/android/launcher3/AboutPageActivity$2;
.super Ljava/lang/Object;
.source "AboutPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/AboutPageActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AboutPageActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AboutPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/AboutPageActivity$2;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$2;->this$0:Lcom/android/launcher3/AboutPageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity$2;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/AboutPageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/launcher3/OpenSourceLicenseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AboutPageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
