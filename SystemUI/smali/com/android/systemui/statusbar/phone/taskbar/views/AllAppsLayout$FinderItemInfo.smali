.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinderItemInfo"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

.field user:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->className:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$FinderItemInfo;->user:I

    return-void
.end method
