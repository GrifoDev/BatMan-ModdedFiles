.class Lcom/android/launcher3/util/logging/SALogUtils$Items;
.super Ljava/lang/Object;
.source "SALogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/logging/SALogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Items"
.end annotation


# instance fields
.field itemNames:Ljava/lang/String;

.field itemcount:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    return-void
.end method
