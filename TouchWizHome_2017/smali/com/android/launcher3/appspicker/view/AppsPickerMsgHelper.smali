.class public final Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;
.super Ljava/lang/Object;
.source "AppsPickerMsgHelper.java"


# static fields
.field private static final DELIMITER:C = '#'

.field private static final KEY:[C

.field private static final TAG:Ljava/lang/String; = "AppsPickerMsgHelper"

.field private static final TITLE:[C

.field private static final TOKEN1:[C

.field private static final TOKEN2:[C

.field private static final TOKEN3:[C

.field private static mBody:Ljava/lang/String;

.field private static mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->KEY:[C

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->TITLE:[C

    const/16 v0, 0x1c

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->TOKEN1:[C

    const/16 v0, 0x178

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->TOKEN2:[C

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->TOKEN3:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x43s
        0x72s
        0x65s
        0x64s
        0x69s
        0x74s
        0x73s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x44s
        0x65s
        0x76s
        0x65s
        0x6cs
        0x6fs
        0x70s
        0x65s
        0x64s
        0x20s
        0x62s
        0x79s
        0xas
        0xas
    .end array-data

    :array_2
    .array-data 2
        0x59s
        0x6fs
        0x75s
        0x6es
        0x67s
        0x73s
        0x65s
        0x6fs
        0x6bs
        0x20s
        0x4cs
        0x69s
        0x6ds
        0xas
        0x48s
        0x6fs
        0x6es
        0x67s
        0x73s
        0x65s
        0x6fs
        0x6bs
        0x20s
        0x4bs
        0x77s
        0x6fs
        0x6es
        0xas
    .end array-data

    :array_3
    .array-data 2
        0x43s
        0x68s
        0x61s
        0x6es
        0x67s
        0x64s
        0x6fs
        0x20s
        0x4bs
        0x69s
        0x6ds
        0xas
        0x43s
        0x68s
        0x61s
        0x6es
        0x67s
        0x68s
        0x77s
        0x61s
        0x6es
        0x20s
        0x59s
        0x61s
        0x6es
        0x67s
        0xas
        0x44s
        0x65s
        0x75s
        0x6bs
        0x6as
        0x61s
        0x65s
        0x20s
        0x4cs
        0x65s
        0x65s
        0xas
        0x44s
        0x6fs
        0x6es
        0x67s
        0x69s
        0x6es
        0x20s
        0x4bs
        0x69s
        0x6ds
        0xas
        0x44s
        0x6fs
        0x6es
        0x67s
        0x77s
        0x6fs
        0x6fs
        0x6bs
        0x20s
        0x4bs
        0x69s
        0x6ds
        0xas
        0x44s
        0x6fs
        0x6fs
        0x77s
        0x6fs
        0x6fs
        0x6bs
        0x20s
        0x4bs
        0x69s
        0x6ds
        0xas
        0x45s
        0x75s
        0x6es
        0x6ds
        0x69s
        0x20s
        0x43s
        0x68s
        0x65s
        0x6fs
        0x6es
        0xas
        0x45s
        0x75s
        0x6es
        0x6bs
        0x79s
        0x75s
        0x6es
        0x67s
        0x20s
        0x4bs
        0x69s
        0x6ds
        0xas
        0x47s
        0x69s
        0x73s
        0x6fs
        0x6fs
        0x20s
        0x4cs
        0x65s
        0x65s
        0xas
        0x48s
        0x61s
        0x65s
        0x63s
        0x68s
        0x61s
        0x6es
        0x20s
        0x43s
        0x68s
        0x6fs
        0x65s
        0xas
        0x48s
        0x61s
        0x6es
        0x6as
        0x6fs
        0x20s
        0x4as
        0x6fs
        0x6fs
        0xas
        0x48s
        0x6fs
        0x6ds
        0x69s
        0x6es
        0x20s
        0x4ds
        0x6fs
        0x6fs
        0x6es
        0xas
        0x48s
        0x79s
        0x75s
        0x6es
        0x77s
        0x6fs
        0x6fs
        0x6bs
        0x20s
        0x4es
        0x61s
        0x6ds
        0xas
        0x4as
        0x61s
        0x65s
        0x68s
        0x77s
        0x61s
        0x6es
        0x20s
        0x50s
        0x61s
        0x72s
        0x6bs
        0xas
        0x4as
        0x61s
        0x65s
        0x68s
        0x6fs
        0x6es
        0x67s
        0x20s
        0x43s
        0x68s
        0x65s
        0x6fs
        0x6es
        0xas
        0x4as
        0x65s
        0x6fs
        0x6es
        0x67s
        0x68s
        0x75s
        0x69s
        0x20s
        0x59s
        0x75s
        0x6es
        0xas
        0x4as
        0x69s
        0x6es
        0x73s
        0x6fs
        0x6fs
        0x6bs
        0x20s
        0x59s
        0x6fs
        0x6fs
        0x6es
        0xas
        0x4as
        0x6fs
        0x6fs
        0x79s
        0x6fs
        0x75s
        0x6es
        0x67s
        0x20s
        0x4as
        0x65s
        0x6fs
        0x6es
        0xas
        0x4as
        0x75s
        0x6es
        0x67s
        0x65s
        0x75s
        0x6es
        0x20s
        0x50s
        0x61s
        0x72s
        0x6bs
        0xas
        0x4as
        0x75s
        0x79s
        0x6fs
        0x6es
        0x67s
        0x20s
        0x59s
        0x75s
        0x6es
        0xas
        0x4bs
        0x61s
        0x6es
        0x67s
        0x68s
        0x79s
        0x75s
        0x6es
        0x20s
        0x53s
        0x75s
        0x68s
        0xas
        0x4bs
        0x61s
        0x79s
        0x65s
        0x6fs
        0x6es
        0x20s
        0x4bs
        0x69s
        0x6ds
        0xas
        0x4bs
        0x69s
        0x62s
        0x6fs
        0x6bs
        0x20s
        0x4bs
        0x69s
        0x6ds
        0xas
        0x4bs
        0x69s
        0x73s
        0x65s
        0x6fs
        0x6es
        0x67s
        0x20s
        0x4as
        0x61s
        0x6es
        0x67s
        0xas
        0x4bs
        0x77s
        0x61s
        0x6es
        0x67s
        0x68s
        0x79s
        0x75s
        0x6es
        0x20s
        0x4cs
        0x69s
        0x6ds
        0xas
        0x53s
        0x6fs
        0x6es
        0x67s
        0x62s
        0x6fs
        0x20s
        0x53s
        0x69s
        0x6ds
        0xas
        0x53s
        0x75s
        0x6es
        0x67s
        0x6as
        0x69s
        0x6es
        0x20s
        0x50s
        0x61s
        0x72s
        0x6bs
        0xas
        0x57s
        0x6fs
        0x6fs
        0x79s
        0x6fs
        0x75s
        0x6es
        0x67s
        0x20s
        0x50s
        0x61s
        0x72s
        0x6bs
        0xas
        0x59s
        0x6fs
        0x75s
        0x6es
        0x67s
        0x6as
        0x6fs
        0x6fs
        0x6es
        0x20s
        0x4bs
        0x6fs
        0xas
        0x59s
        0x75s
        0x6es
        0x6bs
        0x79s
        0x6fs
        0x75s
        0x6es
        0x67s
        0x20s
        0x4as
        0x65s
        0x6fs
        0x6es
        0x67s
        0xas
    .end array-data

    :array_4
    .array-data 2
        0x61s
        0x6es
        0x64s
        0xas
        0x77s
        0x6fs
        0x72s
        0x6cs
        0x64s
        0x77s
        0x69s
        0x64s
        0x65s
        0x20s
        0x48s
        0x6fs
        0x6ds
        0x65s
        0x73s
        0x63s
        0x72s
        0x65s
        0x65s
        0x6es
        0x20s
        0x6ds
        0x65s
        0x6ds
        0x62s
        0x65s
        0x72s
        0x73s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertMessage()V
    .locals 5

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "AppsPickerMsgHelper"

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static getBody()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->mBody:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->TITLE:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->TOKEN1:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->TOKEN2:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->TOKEN3:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->mBody:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method static getKey()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->KEY:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->mKey:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static getQueryKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBody()V
    .locals 2

    const-string v0, "AppsPickerMsgHelper"

    invoke-static {}, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
