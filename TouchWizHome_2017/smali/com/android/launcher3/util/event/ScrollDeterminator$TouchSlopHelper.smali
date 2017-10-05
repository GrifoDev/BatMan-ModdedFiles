.class Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;
.super Ljava/lang/Object;
.source "ScrollDeterminator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/event/ScrollDeterminator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchSlopHelper"
.end annotation


# instance fields
.field private mSystemTouchSlop:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->mSystemTouchSlop:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/event/ScrollDeterminator$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;-><init>()V

    return-void
.end method


# virtual methods
.method getSystemTouchSlop()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->mSystemTouchSlop:I

    return v0
.end method

.method setSystemTouchSlop(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$TouchSlopHelper;->mSystemTouchSlop:I

    return-void
.end method
