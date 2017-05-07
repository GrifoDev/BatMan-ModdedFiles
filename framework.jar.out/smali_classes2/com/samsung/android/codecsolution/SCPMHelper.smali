.class public Lcom/samsung/android/codecsolution/SCPMHelper;
.super Ljava/lang/Object;
.source "SCPMHelper.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final SMART_FITTING_POLICY_COLUMN_CATEGORY:Ljava/lang/String; = "category"

.field private static final SMART_FITTING_POLICY_COLUMN_PACKAGENAME:Ljava/lang/String; = "item"

.field private static final SMART_FITTING_POLICY_COLUMN_TIME:Ljava/lang/String; = "data2"

.field private static final SMART_FITTING_POLICY_COLUMN_USES:Ljava/lang/String; = "data1"

.field private static final SMART_FITTING_POLICY_PROJECTION:[Ljava/lang/String;

.field private static final SMART_FITTING_POLICY_TABLE:Ljava/lang/String; = "policy_item/SmartFittingService"

.field private static final SMART_FITTING_POLICY_URI:Landroid/net/Uri;

.field private static final SMART_FITTING_SCPM_NAME:Ljava/lang/String; = "SmartFittingService"

.field private static final TAG:Ljava/lang/String; = "SCPMHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/codecsolution/SCPMHelper;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/codecsolution/SCPMHelper;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item/SmartFittingService"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/codecsolution/SCPMHelper;->SMART_FITTING_POLICY_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "item"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "category"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "data1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/codecsolution/SCPMHelper;->SMART_FITTING_POLICY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/codecsolution/SCPMHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/codecsolution/SCPMHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "SCPMHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageInfo("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/SCPMHelper;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "SCPM is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SCPMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/samsung/android/codecsolution/SCPMHelper;->SMART_FITTING_POLICY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/codecsolution/SCPMHelper;->SMART_FITTING_POLICY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "cursor is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "category"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "data2"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-nez v6, :cond_3

    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "category is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    if-nez v10, :cond_4

    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "uses is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    if-nez v9, :cond_5

    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "time is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v8, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v8
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "SCPMHelper"

    const-string/jumbo v2, "isAvailable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/SCPMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
