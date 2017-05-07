.class public Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
.super Ljava/lang/Object;
.source "LauncherBnrListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/bnr/LauncherBnrListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public errorCode:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    iput v0, p0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    return-void
.end method
