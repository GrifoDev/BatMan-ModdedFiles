.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;
.super Landroid/widget/LinearLayout;
.source "DeskStatusBarView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getBatteryMeterView()Landroid/view/View;
    .locals 1

    const v0, 0x7f1301b5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
