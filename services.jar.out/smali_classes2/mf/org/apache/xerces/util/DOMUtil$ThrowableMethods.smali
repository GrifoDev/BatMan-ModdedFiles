.class Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;
.super Ljava/lang/Object;
.source "DOMUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/DOMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThrowableMethods"
.end annotation


# static fields
.field private static fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

.field private static fgThrowableMethodsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sput-object v5, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    sput-boolean v4, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "initCause"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    sput-boolean v1, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v5, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    sput-boolean v4, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    sget-boolean v0, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
