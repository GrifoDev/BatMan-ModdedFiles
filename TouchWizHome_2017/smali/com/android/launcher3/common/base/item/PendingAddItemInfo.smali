.class public abstract Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
.super Lcom/android/launcher3/common/base/item/ItemInfo;
.source "PendingAddItemInfo.java"


# static fields
.field protected static final TYPE_INSTALLED_APP:I = 0x1

.field protected static final TYPE_NONE:I = -0x1

.field protected static final TYPE_SYSTEM_APP:I


# instance fields
.field private mAppLabel:Ljava/lang/String;

.field public mLabel:Ljava/lang/String;

.field protected mUninstallable:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mUninstallable:I

    return-void
.end method


# virtual methods
.method public getApplicationLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLabel(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getProviderInfo()Ljava/lang/Object;
.end method

.method public abstract getSpan()[I
.end method

.method public setApplicationLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mAppLabel:Ljava/lang/String;

    return-void
.end method

.method public uninstallable(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mUninstallable:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mUninstallable:I

    :cond_0
    iget v1, p0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mUninstallable:I

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
