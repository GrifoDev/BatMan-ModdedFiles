.class public Lcom/android/launcher3/widget/PendingAddShortcutInfo;
.super Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
.source "PendingAddShortcutInfo.java"


# instance fields
.field activityInfo:Landroid/content/pm/ActivityInfo;

.field resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->itemType:I

    return-void
.end method


# virtual methods
.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mLabel:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mLabel:Ljava/lang/String;

    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getProviderInfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSpan()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PendingAddShortcutInfo package=%s, name=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
