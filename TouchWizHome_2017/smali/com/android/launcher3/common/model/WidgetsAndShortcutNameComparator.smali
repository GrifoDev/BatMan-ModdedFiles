.class public Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;
.super Ljava/lang/Object;
.source "WidgetsAndShortcutNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandle:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field private final mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-void
.end method

.method private getComponentKey(Ljava/lang/Object;)Lcom/android/launcher3/util/ComponentKey;
    .locals 6

    instance-of v3, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v3, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    iget-object v4, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :goto_0
    return-object v3

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0
.end method

.method private getLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    instance-of v2, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadLabel(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->getComponentKey(Ljava/lang/Object;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->getComponentKey(Ljava/lang/Object;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    iget-object v8, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v9, v2, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move v0, v6

    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v9, v3, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v1, v6

    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    return v6

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    move v1, v7

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->getLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez v5, :cond_5

    invoke-direct {p0, p2}, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->getLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v6, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
