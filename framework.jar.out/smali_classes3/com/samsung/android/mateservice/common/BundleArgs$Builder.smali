.class public Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
.super Ljava/lang/Object;
.source "BundleArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/common/BundleArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public static get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public put(Ljava/lang/String;B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/IBinder;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/samsung/android/mateservice/common/BundleArgs$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[I)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[J)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[Z)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method
