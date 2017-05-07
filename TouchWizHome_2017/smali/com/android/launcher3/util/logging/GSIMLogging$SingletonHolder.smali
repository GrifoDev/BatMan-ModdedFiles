.class Lcom/android/launcher3/util/logging/GSIMLogging$SingletonHolder;
.super Ljava/lang/Object;
.source "GSIMLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/logging/GSIMLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sGSIMLoggingInstance:Lcom/android/launcher3/util/logging/GSIMLogging;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-direct {v0}, Lcom/android/launcher3/util/logging/GSIMLogging;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/logging/GSIMLogging$SingletonHolder;->sGSIMLoggingInstance:Lcom/android/launcher3/util/logging/GSIMLogging;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher3/util/logging/GSIMLogging;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/logging/GSIMLogging$SingletonHolder;->sGSIMLoggingInstance:Lcom/android/launcher3/util/logging/GSIMLogging;

    return-object v0
.end method
