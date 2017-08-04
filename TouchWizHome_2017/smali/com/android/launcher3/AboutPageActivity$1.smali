.class Lcom/android/launcher3/AboutPageActivity$1;
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

    iput-object p1, p0, Lcom/android/launcher3/AboutPageActivity$1;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity$1;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v2}, Lcom/android/launcher3/AboutPageActivity;->access$100(Lcom/android/launcher3/AboutPageActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity$1;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v2}, Lcom/android/launcher3/AboutPageActivity;->access$100(Lcom/android/launcher3/AboutPageActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/AboutPageActivity$1;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v3}, Lcom/android/launcher3/AboutPageActivity;->access$100(Lcom/android/launcher3/AboutPageActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-void
.end method
