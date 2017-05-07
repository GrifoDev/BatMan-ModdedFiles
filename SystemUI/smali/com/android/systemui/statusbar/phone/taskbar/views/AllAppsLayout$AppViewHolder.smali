.class Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;
.super Ljava/lang/Object;
.source "AllAppsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppViewHolder"
.end annotation


# instance fields
.field private appIconView:Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

.field private checkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->appIconView:Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;)Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->appIconView:Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout$AppViewHolder;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/AllAppsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
