.class public Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
.super Ljava/lang/Exception;
.source "NotSupportDexFeatureException.java"


# instance fields
.field private pid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->pid:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->pid:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "your dex does not support this feature"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "DeX Station does not support this feature"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "DeX Pad does not support this feature"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa020 -> :sswitch_0
        0xa029 -> :sswitch_1
    .end sparse-switch
.end method
