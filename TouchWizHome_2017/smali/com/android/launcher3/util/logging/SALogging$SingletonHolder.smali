.class Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;
.super Ljava/lang/Object;
.source "SALogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/logging/SALogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sSALoggingInstance:Lcom/android/launcher3/util/logging/SALogging;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging;

    invoke-direct {v0}, Lcom/android/launcher3/util/logging/SALogging;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;->sSALoggingInstance:Lcom/android/launcher3/util/logging/SALogging;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher3/util/logging/SALogging;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;->sSALoggingInstance:Lcom/android/launcher3/util/logging/SALogging;

    return-object v0
.end method
