.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showUnintallConfirmation(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;->val$pkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$9;->val$userId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method
