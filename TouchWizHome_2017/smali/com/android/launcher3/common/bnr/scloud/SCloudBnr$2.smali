.class Lcom/android/launcher3/common/bnr/scloud/SCloudBnr$2;
.super Ljava/lang/Object;
.source "SCloudBnr.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr$2;->this$0:Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr$2;->this$0:Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;

    invoke-static {v0}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->access$000(Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;)Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->onProgress(JJ)V

    return-void
.end method
