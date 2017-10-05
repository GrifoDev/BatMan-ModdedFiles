.class Lcom/android/launcher3/allapps/controller/AppsAdapter$9;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateAppsGridInfo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

.field final synthetic val$gridX:I

.field final synthetic val$gridY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$9;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iput p2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$9;->val$gridX:I

    iput p3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$9;->val$gridY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$9;->val$gridX:I

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$9;->val$gridY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$9;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->updateGridInfo()V

    return-void
.end method
