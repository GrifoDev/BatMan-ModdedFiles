.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;
.super Lcom/android/systemui/statusbar/StatusBarIconView;
.source "LaunchableIconView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;
    }
.end annotation


# instance fields
.field private mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private mIsMouseExit:Z

.field private mKey:Ljava/lang/String;

.field private mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

.field mNotification:Landroid/app/Notification;

.field mPosition:[I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;ZLcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mIsMouseExit:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mPosition:[I

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setContextClickable(Z)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setSoundEffectsEnabled(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02077e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setPosition()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mPosition:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->getLocationOnScreen([I)V

    return-void
.end method


# virtual methods
.method public getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPostionX()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public isSameView(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mKey:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setPosition()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;->onLeftClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)V

    :cond_0
    return-void
.end method

.method public onContextClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;->onRightClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->mKey:Ljava/lang/String;

    return-void
.end method
