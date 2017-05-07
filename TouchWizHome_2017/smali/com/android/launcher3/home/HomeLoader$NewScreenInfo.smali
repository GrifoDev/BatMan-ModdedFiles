.class Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;
.super Ljava/lang/Object;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewScreenInfo"
.end annotation


# instance fields
.field originalScreenId:J

.field plusIndex:I


# direct methods
.method constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;->originalScreenId:J

    iput p3, p0, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;->plusIndex:I

    return-void
.end method
