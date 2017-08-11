.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->showDisableConfirmation(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;->val$pkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$13;->val$userId:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;->-wrap3(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;I)V

    return-void
.end method
