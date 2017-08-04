.class public final enum Lcom/samsung/android/support/reminder/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/reminder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/support/reminder/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/support/reminder/b$a;

.field public static final enum b:Lcom/samsung/android/support/reminder/b$a;

.field public static final enum c:Lcom/samsung/android/support/reminder/b$a;

.field public static final enum d:Lcom/samsung/android/support/reminder/b$a;

.field public static final enum e:Lcom/samsung/android/support/reminder/b$a;

.field private static final synthetic g:[Lcom/samsung/android/support/reminder/b$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/support/reminder/b$a;

    const-string v1, "OPTION_STYLE_FULL"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/support/reminder/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/reminder/b$a;->a:Lcom/samsung/android/support/reminder/b$a;

    new-instance v0, Lcom/samsung/android/support/reminder/b$a;

    const-string v1, "OPTION_STYLE_TIME"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/support/reminder/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/reminder/b$a;->b:Lcom/samsung/android/support/reminder/b$a;

    new-instance v0, Lcom/samsung/android/support/reminder/b$a;

    const-string v1, "OPTION_STYLE_PRESET_TIME"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/support/reminder/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/reminder/b$a;->c:Lcom/samsung/android/support/reminder/b$a;

    new-instance v0, Lcom/samsung/android/support/reminder/b$a;

    const-string v1, "OPTION_STYLE_SPECIFIC_TIME"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/support/reminder/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/reminder/b$a;->d:Lcom/samsung/android/support/reminder/b$a;

    new-instance v0, Lcom/samsung/android/support/reminder/b$a;

    const-string v1, "OPTION_STYLE_CUSTOM"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/support/reminder/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/reminder/b$a;->e:Lcom/samsung/android/support/reminder/b$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/support/reminder/b$a;

    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->a:Lcom/samsung/android/support/reminder/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->b:Lcom/samsung/android/support/reminder/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->c:Lcom/samsung/android/support/reminder/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->d:Lcom/samsung/android/support/reminder/b$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/support/reminder/b$a;->e:Lcom/samsung/android/support/reminder/b$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/support/reminder/b$a;->g:[Lcom/samsung/android/support/reminder/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/reminder/b$a;->f:I

    iput p3, p0, Lcom/samsung/android/support/reminder/b$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/reminder/b$a;
    .locals 1

    const-class v0, Lcom/samsung/android/support/reminder/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/reminder/b$a;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/support/reminder/b$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/support/reminder/b$a;->g:[Lcom/samsung/android/support/reminder/b$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/support/reminder/b$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/reminder/b$a;->f:I

    return v0
.end method
