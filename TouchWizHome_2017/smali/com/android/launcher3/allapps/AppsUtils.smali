.class public final Lcom/android/launcher3/allapps/AppsUtils;
.super Ljava/lang/Object;
.source "AppsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v0, p3}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p4}, Lcom/android/launcher3/common/view/IconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, p5}, Lcom/android/launcher3/common/view/IconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0, p5}, Lcom/android/launcher3/common/view/IconView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method

.method public static createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {p2, p4}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p5}, Lcom/android/launcher3/common/view/IconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method
