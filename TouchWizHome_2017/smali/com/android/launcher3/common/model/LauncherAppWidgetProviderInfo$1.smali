.class final Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$1;
.super Ljava/lang/Object;
.source "LauncherAppWidgetProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public newArray(I)[Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 1

    new-array v0, p1, [Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$1;->newArray(I)[Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method
