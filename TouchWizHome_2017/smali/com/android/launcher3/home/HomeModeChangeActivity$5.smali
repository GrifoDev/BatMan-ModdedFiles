.class Lcom/android/launcher3/home/HomeModeChangeActivity$5;
.super Ljava/lang/Object;
.source "HomeModeChangeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeModeChangeActivity;->setHomeScreenMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;

.field final synthetic val$settingActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeModeChangeActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$5;->this$0:Lcom/android/launcher3/home/HomeModeChangeActivity;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$5;->val$settingActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$5;->val$settingActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity$5;->val$settingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
