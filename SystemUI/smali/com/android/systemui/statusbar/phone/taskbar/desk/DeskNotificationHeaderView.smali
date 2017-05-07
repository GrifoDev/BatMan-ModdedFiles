.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationHeaderView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "DeskNotificationHeaderView.java"


# instance fields
.field private mCloseVeto:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public canBeSwiped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f130170

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationHeaderView;->mCloseVeto:Landroid/view/View;

    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 0

    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method
