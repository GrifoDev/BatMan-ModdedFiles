.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppItemData"
.end annotation


# instance fields
.field private appItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

.field private checked:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->appItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->checked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->checked:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->appItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppItemData;->checked:Z

    return-void
.end method
