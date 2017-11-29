.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRSettingDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_0

    const-string v0, "value"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRSettingDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
