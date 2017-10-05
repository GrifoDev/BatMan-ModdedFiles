.class Lcom/android/launcher3/util/SSecureUpdater$SingletonHolder;
.super Ljava/lang/Object;
.source "SSecureUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SSecureUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sSSecureUpdaterInstance:Lcom/android/launcher3/util/SSecureUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/SSecureUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SSecureUpdater;-><init>(Lcom/android/launcher3/util/SSecureUpdater$1;)V

    sput-object v0, Lcom/android/launcher3/util/SSecureUpdater$SingletonHolder;->sSSecureUpdaterInstance:Lcom/android/launcher3/util/SSecureUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/launcher3/util/SSecureUpdater;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/SSecureUpdater$SingletonHolder;->sSSecureUpdaterInstance:Lcom/android/launcher3/util/SSecureUpdater;

    return-object v0
.end method
