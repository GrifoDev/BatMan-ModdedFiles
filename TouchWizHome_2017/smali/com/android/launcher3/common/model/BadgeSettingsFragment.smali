.class public Lcom/android/launcher3/common/model/BadgeSettingsFragment;
.super Landroid/app/Fragment;
.source "BadgeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;,
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;,
        Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BadgeSettingsFragment"


# instance fields
.field private final BADGE_APP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

.field private allSwitchLayout:Landroid/widget/LinearLayout;

.field private isDatabaseLoaderRunning:Z

.field private mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

.field private mAllSwitch:Landroid/widget/Switch;

.field private mBadgeAppItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

.field private mBadgeSettings:I

.field private mBadges_Hidden:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "class"

    aput-object v2, v0, v1

    const-string v1, "hidden"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    iput-boolean v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    iput v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$3;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->updateAllSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->loadBadgeProvider()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->createAppItemArray()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;)Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->refreshAllAppItems(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Lcom/android/launcher3/common/model/BadgeSettingsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->dismissProgress()V

    return-void
.end method

.method private createAppItemArray()V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)V

    iget-object v5, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    iget-object v5, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private dismissProgress()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private hasActivityForComponent(Landroid/content/ComponentName;)Z
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadBadgeProvider()V
    .locals 12

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v11, :cond_0

    if-eqz v7, :cond_0

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->hasActivityForComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBadgeCounts: mBadges_Hidden add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBadgeProvider: mBadges_Hidden count= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshAllAppItems(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHidden(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static setAppBadgeStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x0

    sget-object v1, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    const-string v4, "package=? AND class=?"

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v7

    const/4 v5, 0x1

    aput-object p2, v0, v5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "hidden"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v5, "package"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "class"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "badgecount"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method private updateAllSwitch()V
    .locals 7

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableAllAppsbadge(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->performClick()Z

    :cond_0
    return-void
.end method

.method public enableAppBadge(Ljava/lang/String;Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHidden(Z)V

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHasChange()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->startLoader()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v1, 0x7f03001a

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0f0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    const v1, 0x7f0f0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f100009

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->setOnChangeListener(Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;)V

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getBadgeSetings()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    iget v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeSettings:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->allSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$2;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: mDatabaseLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->startDatabaseLoader()V

    const-string v0, "BadgeSettingsFragment"

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showProgress()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public startDatabaseLoader()V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDatabaseLoader: return ,mDatabaseLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public startLoader()V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateAppBadgeIntoDatabase()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    if-eqz v7, :cond_5

    const-string v7, "BadgeSettingsFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAppBadgeIntoDatabase: count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v11}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->getItemCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v7}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->getItemCount()I

    move-result v7

    if-lez v7, :cond_5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHasChange()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v5

    invoke-virtual {v0, v9}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->setHasChange(Z)V

    iget-object v11, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    move v7, v8

    :goto_1
    invoke-static {v11, v6, v1, v7}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->setAppBadgeStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    :cond_5
    :goto_2
    const-string v7, "BadgeSettingsFragment"

    const-string v8, "updateAppBadgeIntoDatabase: done "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/launcher3/LauncherAppState;->setBadgeSetings(I)V

    goto :goto_2
.end method

.method public updateList()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->showProgress()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z

    const-string v0, "BadgeSettingsFragment"

    const-string v1, "updateList: mDatabaseLoader is Running..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    if-eqz v0, :cond_0

    const-string v0, "BadgeSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateList() called with: mBadgeAppLoader.getStatus()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->showProgress()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadgeAppItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->BADGE_APP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method
